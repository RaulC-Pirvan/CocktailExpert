from flask import Flask, request, jsonify
from flask_restx import Api, Resource, fields
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

api = Api(app, version='1.0', title='Cocktail Expert', description='A simple Flask API with Swagger support')
ns = api.namespace('data', description='Data operations')

data_model = api.model('Data Model', {
    'message': fields.String(required=True, description='Message to store')
})

data_store = {
    "message": "Hello, World!"
}

# GET Request
@ns.route('/get')
class GetData(Resource):
    def get(self):
        return data_store, 200


# POST Request
@ns.route('/post')
class PostData(Resource):
    @api.expect(data_model)
    def post(self):
        data = request.get_json()

        if not data or 'message' not in data:
            return {
                "error": "No message provided"
            }, 400

        data_store["message"] = data["message"]
        return {
            "message": "Data received successfully"
        }, 201

api.add_namespace(ns)

if __name__ == '__main__':
    app.run(debug=True)
