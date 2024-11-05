-- @block Insert a producer
INSERT INTO Producers (name, location, registration_date) VALUES ('John Doe', '123 Main St, Springfield, IL', '2020-01-01');

-- @block Insert Rice crop
INSERT INTO Crops (name, type, id_producer) VALUES ('Rice', 'Grain', 1);

-- @block Insert DHT22 sensor

INSERT INTO Sensors (sensor_type, id_crop) VALUES ('humidity', 1);

-- @block Insert a sensor reading
INSERT INTO SensorReadings (id_sensor, reading_value) VALUES (1, 0.5);

-- @block List Producers
SELECT * FROM Producers;

-- @block List Crops
SELECT * FROM Crops;

-- @block List Sensors
SELECT * FROM Sensors;

-- @block See history of sensor readings
SELECT * FROM SensorReadings;

-- @block Drop all tables
DROP TABLE SensorReadings;
DROP TABLE Sensors;
DROP TABLE Crops;
DROP TABLE Producers;

-- @block Clear all tables
DELETE FROM SensorReadings;
DELETE FROM Sensors;
DELETE FROM Crops;
DELETE FROM Producers;
