# Irrigation System

The irrigation control logic in the Arduino code involves checking the soil humidity, nutrient levels, and pH readings to decide whether to activate an irrigation pump. Here's a detailed breakdown of each part of the process:

## Components and Thresholds
- **DHT22 Sensor**: Measures humidity and temperature.
- **Button Sensors**: Represent nutrient levels for **Phosphorus (P)** and **Potassium (K)**.
- **LDR Sensor**: Simulates pH levels (mapped from an analog value).
- **Relay**: Controls an irrigation pump.
- **Thresholds**: The humidity threshold is set to 40%, below which irrigation will start.

## Initialization
In the `setup()` function:
- The relay pin is initialized in a LOW state (relay off).
- The DHT sensor is started, and input pins are configured for reading the nutrient and pH sensor states.

## Main Logic (Loop)
1. **Sensor Readings**: The program reads:
   - **Humidity** and **temperature** from the DHT22 sensor.
   - **Nutrient levels** (P and K) using button states (`P_SENSOR_PIN` and `K_SENSOR_PIN`), where a `LOW` value indicates an "OK" status, and `HIGH` indicates a low nutrient level.
   - **pH level** using an analog read function mapped to a range of 0 to 14 using `mapAnalogToPH()`.

2. **DHT22 Sensor Validation**: If the DHT22 fails to provide valid data (returns NaN), the program prints an error message and exits the loop early.

3. **Output Readings**: Sensor readings are displayed on the Serial Monitor for monitoring purposes.

4. **Irrigation Decision Logic**:
   - The relay (irrigation pump) will be **turned ON** if any of the following conditions are met:
     - The **humidity** is below the threshold (`< 40%`).
     - The **nutrient levels** of Phosphorus (P) or Potassium (K) are low (`HIGH` sensor state).
   - If none of these conditions are met, the relay will remain **OFF**.

5. **Delay**: A delay of 2000 ms is included before the next reading to avoid constant sensor checking and relay toggling.

## Code Summary
This system controls irrigation based on soil humidity, nutrient availability, and pH levels. By only running the irrigation pump when humidity is low or nutrients are depleted, it maintains optimal soil conditions while conserving resources. The system continually checks conditions in the loop, updating every two seconds.
