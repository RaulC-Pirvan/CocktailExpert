from flask import Flask, request, jsonify
from flask_restx import Api, Resource, fields

app = Flask(__name__)

api = Api(app, version='1.0', title='Cocktail Expert', description='A simple Flask API with Swagger support')
ns = api.namespace('data', description='Data operations')

data_model = api.model('Data Model', {
    'message': fields.String(required=True, description='Message to store')
})

data_store = {
    "message:" "Hello, World!"
}

# GET Request
@ns.route('/')
class GetData(Resource):
    def get(self):
        return data_store, 200

if __name__ == '__main__':
    app.run(debug=True)
