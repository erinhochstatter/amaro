class Types::PourType < Types::BaseObject
  field :id, ID, null: false
  field :location, String, null: false
  field :prepared_at, GraphQL::Types::ISO8601DateTime, null: false
  field :recipe, Types::RecipeType, null: false
end