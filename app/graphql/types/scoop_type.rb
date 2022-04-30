class Types::ScoopType < Types::BaseObject
  field :id, ID, null: false
  field :prepared_at, GraphQL::Types::ISO8601DateTime, null: false
  field :recipe, Types::RecipeType, null: false
  field :photos, [Types::PhotoType]
end