# TODO

## 1. Setup repository
- [x] Create TODO
- [x] Create a GitHub repository (e.g., `meugit/cursotiaor/pbl/fase3`).
- [x] Organize project files in GitHub:

## 2. Setup Sensors on Wokwi
- [x] Configure the environment in Wokwi.com with the following:
  - [x] Replace nutrient sensors (P & K) with buttons.
  - [x] Use LDR as a substitute for the pH sensor.
  - [x] Integrate DHT22 for soil moisture measurement.
  - [x] Set up a relay to control the irrigation pump.

## 3. Develop ESP32 Code
- [x] Write the code for the ESP32 to:
  - [x] Read data from the buttons and DHT22 sensor.
  - [x] Design the decision logic for **when to activate the irrigation pump** based on:
    - Soil moisture threshold.
    - Nutrient levels (button inputs).
    - pH levels (LDR readings).
  - [x] Control the relay for the pump based on sensor readings.

## 4. Setup Database
- [x] **Docker Setup**
  - [x] Add Docker Compose configuration for the MySQL database.
  - [x] Configure SQLTools in VSCode to connect to the MySQL database.
  - [x] Configure VSCode tasks to run Docker containers.
- [x] **Initial SQL Migration**
  - [x] Create an initial migration SQL script to set up the database schema.
  - [x] Add initial session SQL scripts for populating necessary starting data.
- [x] Design and implement a SQL database schema for:
  - [x] Sensor data (moisture, nutrients, light).
  - [x] Historical irrigation records.

## 5. CRUD
- [x] Setup `.venv`
- [x] Setup `.env`
- [x] Setup SQLAlchemy
- [x] Create CRUD operations in Python:
  - [x] Connect with the SQL database to record sensor readings and irrigation events.
  - [x] Implement CRUD operations to create, read, update, and delete sensor data.

## 6. Data Collection
- [x] Due to Wokwi limitations, **manually copy sensor data** from Wokwi Monitor Serial and import into Python for CRUD.

## 7. Optional Features (If Time Allows)
- [x] Explore Dashboard Creation:
  - [x] Research libraries for dashboard creation (Streamlit/Dash).
  - [x] Implement visualizations for sensor data.
- [x] API Integration:
  - [x] Identify a suitable public API for weather data (e.g., OpenWeather).
  - [x] Implement logic to adjust irrigation based on weather forecasts.
- [] Statistical Analysis in R:
  - [ ] Consider using R for data analysis on irrigation decisions.

## 8. Documentation
- [ ] Prepare `README.md` file:
  - [ ] Explain project goals and architecture.
  - [ ] Document sensor substitutions and their implications.
  - [x] Describe the logic for irrigation control.
  - [x] Include images of the circuit setup from Wokwi.
- [x] Compile images and files for the GitHub repository.

## 9. Video Demonstration
- [ ] Record a demo video (5 minutes max):
  - [ ] Show the functionality of the irrigation system.
  - [ ] Explain the sensor readings and response.
- [ ] Upload the video to YouTube (unlisted).
- [ ] Link to the video demonstration in the repository.

## 10. Delivery
- [ ] Ensure all code is committed and pushed.
