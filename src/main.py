from dotenv import load_dotenv
# Load environment variables from .env file
load_dotenv()

from models import Base
from datetime import datetime
from database import engine
from services import insert_producer, insert_crop, insert_sensor, insert_sensor_reading, insert_application_adjustment

if __name__ == "__main__":
    # Create tables
    Base.metadata.create_all(engine)

    # Example: Insert a producer
    insert_producer(name="John Doe", location="Farmville", registration_date=datetime.now())
    # Example: Insert a crop for the producer
    insert_crop(name="Corn", crop_type="Grain", id_producer=1)  # Adjust producer ID as needed
    # Example: Insert a sensor for the crop
    insert_sensor(sensor_type='humidity', id_crop=1)  # Adjust crop ID as needed
    # Example: Insert a sensor reading
    insert_sensor_reading(id_sensor=1, reading_value=75.5)  # Adjust sensor ID as needed
    # Example: Insert an application adjustment
    insert_application_adjustment(water_quantity=100.0, nutrient_quantity=50.0, id_crop=1)  # Adjust crop ID as needed
