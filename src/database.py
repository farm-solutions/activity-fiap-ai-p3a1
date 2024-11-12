from dotenv import load_dotenv
# Load environment variables from .env file
load_dotenv()

import os
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

# Database configuration
DATABASE_URL = os.getenv("DATABASE_URL")

if(DATABASE_URL is None):
    raise Exception("DATABASE_URL environment variable not set")

# SQLAlchemy setup
engine = create_engine(DATABASE_URL)
Session = sessionmaker(bind=engine)
