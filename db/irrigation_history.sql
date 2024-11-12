-- @block List IrrigationHistory
SELECT * FROM "IrrigationHistory";

-- @block Insert IrrigationHistory data
INSERT INTO "IrrigationHistory" (timestamp, status, humidity_value) 
VALUES 
(TO_DATE('2024-11-06 06:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 57.2),
(TO_DATE('2024-11-06 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 50.4),
(TO_DATE('2024-11-06 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 49.9),
(TO_DATE('2024-11-06 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 52.6),
(TO_DATE('2024-11-06 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 54.8),
(TO_DATE('2024-11-06 19:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 47.1),
(TO_DATE('2024-11-07 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 60.3),
(TO_DATE('2024-11-07 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 55.0),
(TO_DATE('2024-11-07 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 58.5),
(TO_DATE('2024-11-07 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 45.7),
(TO_DATE('2024-11-07 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 50.6),
(TO_DATE('2024-11-08 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 53.8),
(TO_DATE('2024-11-08 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 46.3),
(TO_DATE('2024-11-08 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 59.1),
(TO_DATE('2024-11-08 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 49.5),
(TO_DATE('2024-11-08 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 55.2),
(TO_DATE('2024-11-09 07:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 57.6),
(TO_DATE('2024-11-09 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 52.1),
(TO_DATE('2024-11-09 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 50.4),
(TO_DATE('2024-11-09 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 48.7),
(TO_DATE('2024-11-09 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 51.3),
(TO_DATE('2024-11-09 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 46.2),
(TO_DATE('2024-11-10 06:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 54.1),
(TO_DATE('2024-11-10 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 49.8),
(TO_DATE('2024-11-10 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 58.7),
(TO_DATE('2024-11-10 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 45.4),
(TO_DATE('2024-11-10 16:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 52.0),
(TO_DATE('2024-11-10 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 50.9),
(TO_DATE('2024-11-11 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 56.2),
(TO_DATE('2024-11-11 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 48.5),
(TO_DATE('2024-11-11 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 53.7),
(TO_DATE('2024-11-11 15:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 47.3),
(TO_DATE('2024-11-11 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 51.8),
(TO_DATE('2024-11-12 06:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 54.5),
(TO_DATE('2024-11-12 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 49.1),
(TO_DATE('2024-11-12 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 57.3),
(TO_DATE('2024-11-12 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 50.0),
(TO_DATE('2024-11-12 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 53.5),
(TO_DATE('2024-11-12 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 48.2),
(TO_DATE('2024-11-13 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 60.1),
(TO_DATE('2024-11-13 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 55.9),
(TO_DATE('2024-11-13 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 58.4),
(TO_DATE('2024-11-13 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 46.5),
(TO_DATE('2024-11-13 16:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 50.8),
(TO_DATE('2024-11-13 18:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 47.9),
(TO_DATE('2024-11-14 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 54.6),
(TO_DATE('2024-11-14 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 52.3),
(TO_DATE('2024-11-14 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 51.7),
(TO_DATE('2024-11-14 15:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Desligado', 50.2),
(TO_DATE('2024-11-14 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 53.4),
(TO_DATE('2024-11-15 07:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Ligado', 55.9);
