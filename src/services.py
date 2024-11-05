from sqlalchemy.exc import SQLAlchemyError
from models import Producers, Crops, Sensors, SensorReadings, ApplicationAdjustments
from database import Session

def insert_producer(name, location, registration_date):
    session = Session()
    try:
        new_producer = Producers(name=name, location=location, registration_date=registration_date)
        session.add(new_producer)
        session.commit()
        print("Producer inserted successfully.")
    except SQLAlchemyError as e:
        session.rollback()
        print(f"Error inserting producer: {e}")
    finally:
        session.close()

def insert_crop(name, crop_type, id_producer):
    session = Session()
    try:
        new_crop = Crops(name=name, type=crop_type, id_producer=id_producer)
        session.add(new_crop)
        session.commit()
        print("Crop inserted successfully.")
    except SQLAlchemyError as e:
        session.rollback()
        print(f"Error inserting crop: {e}")
    finally:
        session.close()

def insert_sensor(sensor_type, id_crop):
    session = Session()
    try:
        new_sensor = Sensors(sensor_type=sensor_type, id_crop=id_crop)
        session.add(new_sensor)
        session.commit()
        print("Sensor inserted successfully.")
    except SQLAlchemyError as e:
        session.rollback()
        print(f"Error inserting sensor: {e}")
    finally:
        session.close()

def insert_sensor_reading(id_sensor, reading_value):
    session = Session()
    try:
        new_reading = SensorReadings(id_sensor=id_sensor, reading_value=reading_value)
        session.add(new_reading)
        session.commit()
        print("Sensor reading inserted successfully.")
    except SQLAlchemyError as e:
        session.rollback()
        print(f"Error inserting sensor reading: {e}")
    finally:
        session.close()

def insert_application_adjustment(water_quantity, nutrient_quantity, id_crop):
    session = Session()
    try:
        new_adjustment = ApplicationAdjustments(
            water_quantity=water_quantity,
            nutrient_quantity=nutrient_quantity,
            id_crop=id_crop
        )
        session.add(new_adjustment)
        session.commit()
        print("Application adjustment inserted successfully.")
    except SQLAlchemyError as e:
        session.rollback()
        print(f"Error inserting application adjustment: {e}")
    finally:
        session.close()