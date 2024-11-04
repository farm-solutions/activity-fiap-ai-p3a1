-- @block Insert a producer
INSERT INTO Producer (name, location, registration_date) VALUES ('John Doe', '123 Main St, Springfield, IL', '2020-01-01');

-- @block Insert Rice crop
INSERT INTO Crop (name, type, id_producer) VALUES ('Rice', 'Grain', 1);

-- @block Insert DHT22 sensor

INSERT INTO Sensor (sensor_type, id_crop) VALUES ('humidity', 1);

-- @block Insert a sensor reading
INSERT INTO Sensor_Reading (id_sensor, reading_value) VALUES (1, 0.5);

-- @block List Producers
SELECT * FROM Producer;

-- @block List Crops
SELECT * FROM Crop;

-- @block List Sensors
SELECT * FROM Sensor;

-- @block See history of sensor readings
SELECT * FROM Sensor_Reading;