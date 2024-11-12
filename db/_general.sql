-- @block Drop all tables
DROP TABLE "IrrigationHistory";
DROP TABLE "SensorReadings";
DROP TABLE "ApplicationAdjustments";
DROP TABLE "Sensors";
DROP TABLE "Crops";
DROP TABLE "Producers";

-- @block Clear all tables
DELETE FROM "IrrigationHistory";
DELETE FROM "ApplicationAdjustments";
DELETE FROM "SensorReadings";
DELETE FROM "Sensors";
DELETE FROM "Crops";
DELETE FROM "Producers";
