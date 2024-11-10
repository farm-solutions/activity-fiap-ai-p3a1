# Sensor Substitutions and Their Implications

In this project, we’ve substituted certain specialized agricultural sensors with available alternatives on the **Wokwi.com** platform, due to the lack of agricultural-specific sensors in its free user tier. These substitutions are outlined below, along with potential implications for sensor readings and system performance:

1. **Nutrient Sensors for Phosphorus (P) and Potassium (K)**:
   - **Substitution**: Physical buttons simulate the presence or absence of these nutrients, with each button representing one nutrient (pressed = nutrient present, unpressed = nutrient depleted).
   - **Implications**: This replacement offers only binary data (high/low nutrient levels) instead of the precise measurements that real nutrient sensors would provide. As a result, nutrient management becomes a basic on/off condition, which could simplify, but also limit, nutrient monitoring accuracy.

2. **pH Sensor**:
   - **Substitution**: An **LDR (Light Dependent Resistor)** sensor simulates pH levels by interpreting light intensity as pH values. The analog readings from the LDR are mapped to a range of 0 to 14, with 7 representing a neutral pH.
   - **Implications**: Using an LDR for pH is an approximation that does not provide a true pH reading. Light intensity variations are used as analog data, which, while suitable for basic simulation purposes, may lead to inaccurate pH representation and hinder precise pH management.

3. **Humidity Sensor**:
   - **Retention**: We are using a **DHT22 sensor** to measure humidity, as it is compatible with Wokwi and suitable for agricultural applications.
   - **Implications**: The DHT22 provides reliable humidity readings, allowing accurate monitoring of soil moisture, which is critical for automated irrigation control.

By using these substitutions, the project remains focused on the functional goals, allowing us to build and test the automated irrigation system logic. However, the simplified sensor data may affect the precision of irrigation decisions and nutrient management.
