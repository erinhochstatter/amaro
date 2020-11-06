class Types::IngredientRecipeType < Types::BaseObject
  field :id, ID, null: false
  field :quantity, Float, null: false
  field :unit, Types::UnitType, null: true
  field :ingredient, Types::IngredientType, null: false
  field :description, String, null: false
end