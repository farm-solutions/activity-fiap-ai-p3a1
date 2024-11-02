# TODO.md

## 1. System Setup and Sensor Configuration

- **[ ]** Use **ESP32 microcontroller** as the central control unit.
- **[ ]** Configure **sensor simulations on Wokwi.com**:
    - P and K nutrient sensors: Simulate with **two buttons** (pressed = nutrient present, not pressed = absent).
    - pH sensor: Simulate with an **LDR (Light Dependent Resistor)** to approximate analog data (use a scale similar to pH range).
    - Moisture sensor: Use the **DHT22** for soil humidity data.
- **[ ]** Simulate **water pump control** using a relay to turn irrigation on/off based on readings.

## 2. Irrigation Control Logic

- **[ ]** Design the decision logic for **when to activate the irrigation pump** based on:
    - Soil moisture threshold.
    - Nutrient levels (button inputs).
    - pH levels (LDR readings).
- **[ ]** Document the irrigation decision logic thoroughly.

## 3. Data Collection and Database Integration

- **[ ]** Configure **Python script for CRUD operations** on a SQL database (local or cloud-based):
    - Connect with the SQL database to record sensor readings and irrigation events.
    - Implement CRUD operations to create, read, update, and delete sensor data.
- **[ ]** Due to Wokwi limitations, **manually copy sensor data** from Wokwi Monitor Serial and import into Python for CRUD.

## 4. Optional Extensions

- **Dashboard Development (Optional)**:
    - **[ ]** Use a Python library like **Streamlit** or **Dash** to create a dashboard for visualizing:
        - Soil moisture levels.
        - Nutrient levels (P and K).
        - pH values.
        - Irrigation system status.
    - **[ ]** Display historical trends and recommend irrigation schedules based on conditions.

- **Public API Integration (Optional)**:
    - **[ ]** Integrate a **public weather API** (e.g., OpenWeather) for meteorological data:
        - Adjust irrigation based on forecasted rainfall or adverse weather.
    - **[ ]** If direct integration is not feasible, manually transfer API data from Python to C/C++ as needed.

- **Data Science in R (Optional)**:
    - **[ ]** Implement statistical analysis in **R** to refine the irrigation decision model:
        - Use statistical techniques for data insights, e.g., predictive models on irrigation needs.
  
## 5. Documentation and Deliverables

- **[ ]** Organize source files in a GitHub repository (e.g., `meugit/cursotiaor/pbl/fase3`).
- **[ ]** Write a detailed `README.md`:
    - Explain system functionality, logic, and specific features.
    - Include **circuit diagrams** from Wokwi showing sensor connections.
    - Attach the **ESP32 C/C++ code** for sensor integration and irrigation control.
    - Include **Python code** for database CRUD operations.
- **[ ]** Record a **demonstration video** (5 minutes max) and upload to YouTube (unlisted). Link this in the README.
