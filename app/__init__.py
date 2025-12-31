from flask import Flask
from app.config import Config
from app.api.routes import api_blueprint
from app.auth.routes import auth_blueprint
from app.main.routes import main_blueprint

def create_app():
    app = Flask(__name__)

    # Configure app settings
    app.config.from_object(Config)

    # Register blueprints
    app.register_blueprint(api_blueprint)
    app.register_blueprint(auth_blueprint)
    app.register_blueprint(main_blueprint)

    return app

