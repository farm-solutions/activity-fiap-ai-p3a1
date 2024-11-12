-- @block Insert a producer
INSERT INTO "Producers" (name, location, registration_date) VALUES ('John Doe', '123 Main St, Springfield, IL', TO_DATE('2020-01-01', 'YYYY-MM-DD'));

-- @block Insert Rice crop
INSERT INTO "Crops" (name, type, id_producer) VALUES ('Rice', 'Grain', 1);

-- @block List Crops
SELECT * FROM "Crops";

-- @block List Producers
SELECT * FROM "Producers";
