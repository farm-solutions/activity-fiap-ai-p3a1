-- @block List Sensors
SELECT * FROM "Sensors";

-- @block Insert DHT22 sensor

INSERT INTO "Sensors" (sensor_type, id_crop) VALUES ('humidity', 1);

-- @block See history of sensor readings
SELECT * FROM "SensorReadings";

-- @block Insert DHT22 reading data

INSERT INTO "SensorReadings" (id_sensor, reading_value, reading_date) 
VALUES 
(1, 55.2, TO_DATE('2024-11-06 06:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 56.8, TO_DATE('2024-11-06 09:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 54.3, TO_DATE('2024-11-06 11:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 52.1, TO_DATE('2024-11-06 14:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 53.9, TO_DATE('2024-11-06 16:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 51.5, TO_DATE('2024-11-06 19:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 58.4, TO_DATE('2024-11-07 08:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 57.0, TO_DATE('2024-11-07 10:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 55.7, TO_DATE('2024-11-07 13:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 49.8, TO_DATE('2024-11-07 15:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 52.6, TO_DATE('2024-11-07 18:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 53.1, TO_DATE('2024-11-08 07:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 50.3, TO_DATE('2024-11-08 10:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 54.9, TO_DATE('2024-11-08 12:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 51.4, TO_DATE('2024-11-08 15:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 55.8, TO_DATE('2024-11-08 18:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 54.7, TO_DATE('2024-11-09 07:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 53.5, TO_DATE('2024-11-09 09:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 56.2, TO_DATE('2024-11-09 12:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 52.8, TO_DATE('2024-11-09 14:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 51.9, TO_DATE('2024-11-09 16:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 50.1, TO_DATE('2024-11-09 19:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 52.7, TO_DATE('2024-11-10 06:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 54.0, TO_DATE('2024-11-10 08:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 55.3, TO_DATE('2024-11-10 11:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 53.8, TO_DATE('2024-11-10 13:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 49.7, TO_DATE('2024-11-10 16:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 52.4, TO_DATE('2024-11-10 18:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 56.9, TO_DATE('2024-11-11 08:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 55.1, TO_DATE('2024-11-11 10:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 54.4, TO_DATE('2024-11-11 13:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 50.9, TO_DATE('2024-11-11 15:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 53.2, TO_DATE('2024-11-11 17:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 54.5, TO_DATE('2024-11-12 06:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 55.0, TO_DATE('2024-11-12 09:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 57.6, TO_DATE('2024-11-12 11:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 52.3, TO_DATE('2024-11-12 14:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 50.5, TO_DATE('2024-11-12 16:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 51.7, TO_DATE('2024-11-12 19:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 56.5, TO_DATE('2024-11-13 07:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 58.9, TO_DATE('2024-11-13 09:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 54.6, TO_DATE('2024-11-13 11:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 50.3, TO_DATE('2024-11-13 13:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 53.5, TO_DATE('2024-11-13 16:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 50.0, TO_DATE('2024-11-13 18:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 55.8, TO_DATE('2024-11-14 08:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 54.0, TO_DATE('2024-11-14 10:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 53.6, TO_DATE('2024-11-14 13:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 51.4, TO_DATE('2024-11-14 15:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 52.9, TO_DATE('2024-11-14 18:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 54.2, TO_DATE('2024-11-15 07:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 55.5, TO_DATE('2024-11-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 56.7, TO_DATE('2024-11-15 11:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 50.6, TO_DATE('2024-11-15 14:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 53.9, TO_DATE('2024-11-15 16:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 51.1, TO_DATE('2024-11-15 19:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 54.4, TO_DATE('2024-11-16 06:45:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 53.3, TO_DATE('2024-11-16 09:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 55.9, TO_DATE('2024-11-16 11:30:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 52.1, TO_DATE('2024-11-16 14:00:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 56.0, TO_DATE('2024-11-16 16:15:00', 'YYYY-MM-DD HH24:MI:SS')),
(1, 50.8, TO_DATE('2024-11-16 18:45:00', 'YYYY-MM-DD HH24:MI:SS'));
