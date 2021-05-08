class Types::IngredientRecipeType < Types::BaseObject
  field :id, ID, null: false
  field :quantity, Float, null: true
  field :unit, Types::UnitType, null: true
  field :ingredient, Types::IngredientType, null: false
  field :description, String, null: true
  field :recipe_id, ID, null: false
end