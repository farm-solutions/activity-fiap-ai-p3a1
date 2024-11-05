from sqlalchemy import Column, Float, Integer, String, Enum, TIMESTAMP, ForeignKey
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from datetime import datetime

Base = declarative_base()

class Producers(Base):
    __tablename__ = 'Producers'
    
    id_producer = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(100), nullable=False)
    location = Column(String(255), nullable=False)
    registration_date = Column(TIMESTAMP, default=datetime.utcnow)

    crops = relationship("Crops", back_populates="producer")

class Crops(Base):
    __tablename__ = 'Crops'
    
    id_crop = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(100), nullable=False)
    type = Column(String(100), nullable=False)
    id_producer = Column(Integer, ForeignKey('Producers.id_producer'), nullable=False)

    producer = relationship("Producers", back_populates="crops")
    sensors = relationship("Sensors", back_populates="crop")
    application_adjustments = relationship("ApplicationAdjustments", back_populates="crop")

class Sensors(Base):
    __tablename__ = 'Sensors'
    
    id_sensor = Column(Integer, primary_key=True, autoincrement=True)
    sensor_type = Column(Enum('humidity', 'pH', 'nutrients'), nullable=False)
    id_crop = Column(Integer, ForeignKey('Crops.id_crop'), nullable=False)

    crop = relationship("Crops", back_populates="sensors")
    readings = relationship("SensorReadings", back_populates="sensor")

class SensorReadings(Base):
    __tablename__ = 'SensorReadings'
    
    id_reading = Column(Integer, primary_key=True, autoincrement=True)
    id_sensor = Column(Integer, ForeignKey('Sensors.id_sensor'), nullable=False)
    reading_value = Column(Float, nullable=False)
    reading_date = Column(TIMESTAMP, default=datetime.utcnow)

    sensor = relationship("Sensors", back_populates="readings")

class ApplicationAdjustments(Base):
    __tablename__ = 'ApplicationAdjustments'
    
    id_adjustment = Column(Integer, primary_key=True, autoincrement=True)
    water_quantity = Column(Float, nullable=False)
    nutrient_quantity = Column(Float, nullable=False)
    adjustment_date = Column(TIMESTAMP, default=datetime.utcnow)
    id_crop = Column(Integer, ForeignKey('Crops.id_crop'), nullable=False)

    crop = relationship("Crops", back_populates="application_adjustments")
