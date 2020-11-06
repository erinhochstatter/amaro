class Types::RecipeType < Types::BaseObject
  field :id, ID, null: false
  field :title, String, null: false
  field :mixologist, String, null: false
  field :description, String, null: false
  field :original_url, String, null: false
  field :ingredient_recipes, [Types::IngredientRecipeType], null: false
end