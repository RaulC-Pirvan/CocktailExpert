from flask import Flask, request, jsonify
from flask_restx import Api, Resource, fields
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

api = Api(app, version='1.0', title='Cocktail Expert', description='A simple Flask API with Swagger support')
ns = api.namespace('data', description='Data operations')

ingredients_store = {
    "vodka": "disabled",
    "gin": "disabled",
    "rum": "disabled",
    "sugar": "disabled",
    "prosecco": "disabled",
    "white peach puree": "disabled",

}

ingredient_model = api.model(
    "IngredientModel",
    {
        "ingredients": fields.List(fields.String, required=True, description="List of ingredient states"),
    },
)

# GET request: Return current ingredient states
@ns.route("/get")
class GetData(Resource):
    def get(self):
        ingredient_list = [f"{state} {name}" for name, state in ingredients_store.items()]
        return {"ingredients": ingredient_list}, 200

# POST request: Update ingredient states
@ns.route("/update")
class UpdateData(Resource):
    @api.expect(ingredient_model)
    def post(self):
        data = request.get_json()

        if not data or "ingredients" not in data:
            return {"error": "No ingredients provided"}, 400

        for item in data["ingredients"]:
            parts = item.split(" ", 1)  # Split into "enabled"/"disabled" and ingredient name
            if len(parts) == 2:
                state, ingredient = parts
                ingredient = ingredient.lower()
                if ingredient in ingredients_store:
                    ingredients_store[ingredient] = state  # Update ingredient state

        return {"message": "Ingredients updated successfully"}, 200

api.add_namespace(ns)

if __name__ == '__main__':
    app.run(debug=True)
