from dotenv import load_dotenv
# Carregar variáveis de ambiente
load_dotenv()

import dash
from dash import dcc, html
from dash.dependencies import Input, Output
import pandas as pd
import plotly.express as px
from database import engine
from sqlalchemy import text
from services import fetch_weather_forecast
from models import Base
from sqlalchemy.orm import sessionmaker

# Configuração do Dash
app = dash.Dash(__name__,
                external_stylesheets=['https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css'])

conn = engine.connect()

# Função para obter dados de umidade
def fetch_humidity_data():
    query = """
    SELECT R.reading_value,
           R.reading_date,
           S.sensor_type,
           C.name AS crop_name,
           P.name AS producer_name,
           P.location
    FROM "SensorReadings" R
             LEFT JOIN "Sensors" S ON R.id_sensor = S.id_sensor
             LEFT JOIN "Crops" C ON S.id_crop = C.id_crop
             INNER JOIN "Producers" P ON P.id_producer = C.id_producer
    WHERE S.sensor_type = 'humidity'
          AND ROWNUM <= 100
    ORDER BY R.reading_date ASC
    """
    df = pd.read_sql(query, conn)
    return df


# Função para obter o histórico de irrigação
def fetch_irrigation_history():
    query = """
    SELECT * FROM (
    SELECT timestamp, status, humidity_value
        FROM "IrrigationHistory"
        ORDER BY timestamp DESC
)
WHERE ROWNUM <= 20
    """
    df = pd.read_sql(query, conn)
    return df


# Função para calcular a recomendação de irrigação
def calculate_irrigation_recommendation(df):
    humidity_threshold = 75.0  # Valor ideal de umidade
    recent_average = df['reading_value'].head(10).mean()  # Média das últimas 10 leituras

    if recent_average < humidity_threshold:
        recommendation = "Irrigação Necessária"
        explanation = f"A média recente de umidade é {recent_average:.2f}%, que está abaixo do limite ideal de {humidity_threshold}%."
        color = "red"
    else:
        recommendation = "Irrigação Não Necessária"
        explanation = f"A média recente de umidade é {recent_average:.2f}%, que está dentro do limite ideal de {humidity_threshold}%."
        color = "green"

    return recommendation, explanation, color



# Layout do Dashboard
app.layout = html.Div([
    html.H1("Dashboard de Irrigação Inteligente - Umidade do Solo", style={"textAlign": "center"}),

    # Tabela de Histórico de Irrigação
    html.H2("Histórico de Irrigação", style={"textAlign": "center", "marginTop": "30px"}),
    html.Div(id="irrigation-history"),

    # Gráficos de umidade
    dcc.Graph(id="humidity-line-graph"),
    dcc.Graph(id="humidity-bar-graph"),
    dcc.Graph(id="humidity-area-graph"),

    # Componente de recomendação de irrigação
    html.Div(id="irrigation-recommendation", style={
        "textAlign": "center",
        "margin": "20px auto",
        "fontSize": "24px",
        "width": "50%",
    }),

    # Seção de Previsão Meteorológica
    html.H2("Previsão Meteorológica para a Irrigação", style={"textAlign": "center", "marginTop": "30px"}),
    html.Div(id="weather-forecast"),

    # Atualização do dashboard
    dcc.Interval(
        id="interval-component",
        interval=10 * 1000,  # Atualiza a cada 10 segundos
        n_intervals=0
    )
])


# Callback para atualizar os gráficos de umidade, recomendação de irrigação, histórico de irrigação e previsão do tempo
@app.callback(
    [Output("humidity-line-graph", "figure"),
     Output("humidity-bar-graph", "figure"),
     Output("humidity-area-graph", "figure"),
     Output("irrigation-recommendation", "children"),
     Output("irrigation-recommendation", "style"),
     Output("irrigation-history", "children"),
     Output("weather-forecast", "children")],
    Input("interval-component", "n_intervals")
)
def update_dashboard(n):
    df = fetch_humidity_data()

    # Gráfico de Linha de Umidade
    line_fig = px.line(
        df,
        x="reading_date",
        y="reading_value",
        color="crop_name",
        title="Leituras de Umidade ao longo do Tempo (Gráfico de Linha)",
        labels={"reading_value": "Umidade (%)", "reading_date": "Data da Leitura"},
        hover_data={"producer_name": True, "location": True}
    )

    # Gráfico de Barras de Umidade por Hora
    df['hour'] = df['reading_date'].dt.hour
    hourly_avg_df = df.groupby('hour')['reading_value'].mean().reset_index()
    bar_fig = px.bar(
        hourly_avg_df,
        x="hour",
        y="reading_value",
        title="Média de Umidade por Hora (Gráfico de Barras)",
        labels={"reading_value": "Umidade Média (%)", "hour": "Hora do Dia"}
    )

    # Gráfico de Área de Umidade
    area_fig = px.area(
        df,
        x="reading_date",
        y="reading_value",
        color="crop_name",
        title="Leituras de Umidade ao longo do Tempo (Gráfico de Área)",
        labels={"reading_value": "Umidade (%)", "reading_date": "Data da Leitura"},
        hover_data={"producer_name": True, "location": True}
    )

    # Obter recomendação e explicação de irrigação
    recommendation, explanation, color = calculate_irrigation_recommendation(df)
    recommendation_text = f"Recomendação: {recommendation}. {explanation}"
    recommendation_style = {
        "color": "white",
        "backgroundColor": color,
        "padding": "10px",
        "borderRadius": "5px",
        "textAlign": "center",
    }

    # Histórico de Irrigação
    history_df = fetch_irrigation_history()
    history_table = html.Table([
        html.Thead(html.Tr([html.Th("Data/Hora"), html.Th("Status"), html.Th("Umidade (%)")])),
        html.Tbody([
            html.Tr([
                html.Td(row["timestamp"]),
                html.Td(row["status"]),
                html.Td(f"{row['humidity_value']:.2f}")
            ]) for _, row in history_df.iterrows()
        ])
    ], style={"width": "80%", "margin": "20px auto", "border": "1px solid #ddd", "textAlign": "center"})

    # Previsão Meteorológica
    forecast_data = fetch_weather_forecast()
    forecast_table = html.Table([
        html.Thead(html.Tr(
            [html.Th("Data/Hora"), html.Th("Temperatura (°C)"), html.Th("Umidade (%)"), html.Th("Condição"),
             html.Th("Chuva (mm)")]),
                   ),
        html.Tbody([
            html.Tr([
                html.Td(item["datetime"]),
                html.Td(f"{item['temp']} °C"),
                html.Td(f"{item['humidity']}%"),
                html.Td(item["weather"]),
                html.Td(f"{item['rain']} mm")
            ]) for item in forecast_data
        ])
    ], style={"width": "80%", "margin": "20px auto", "border": "1px solid #ddd", "textAlign": "center"})

    return line_fig, bar_fig, area_fig, recommendation_text, recommendation_style, history_table, forecast_table

def test():
    # Insert a sample into Test2
    Session = sessionmaker(bind=engine)
    session = Session()

    print("Inserting sample into IrrigationHistory...")
    # oracleDB
    session.execute(text("""
    INSERT INTO "IrrigationHistory" (id, timestamp, status, humidity_value)
    VALUES (1, TO_DATE('2021-09-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 80.0)
    """))
    session.commit()
    session.close()

    # Query IrrigationHistory
    print("Querying IrrigationHistory...")
    crops = session.execute(text("""
    SELECT * FROM "IrrigationHistory"
    """)).fetchall()
    print(crops)

# Executa o servidor
if __name__ == "__main__":
    # Create tables
    print("Creating tables...")
    Base.metadata.create_all(engine)

    # test()

    app.run_server(debug=True)
