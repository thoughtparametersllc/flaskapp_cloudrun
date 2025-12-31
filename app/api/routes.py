from Flask import Blueprint

api|_blueprint = Blueprint('api', __name__)

@api_blueprint.route('/api/data')
def get_data():
    return {"data": "This is some API data"}