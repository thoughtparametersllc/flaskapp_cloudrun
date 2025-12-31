import os

class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY', 'default_secret_key')
    DEBUG = os.environ.get('DEBUG', 'False')
    BUCKET_NAME = os.environ.get('BUCKET_NAME', 'default_bucket')