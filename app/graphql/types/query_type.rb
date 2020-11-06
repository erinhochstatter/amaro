module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # First describe the field signature:
    field :pour, PourType, null: true do
      description "Find a pour by ID"
      argument :id, ID, required: true
    end

    field :pours, [Types::PourType, null: true], "All the pours", null: false

  # Then provide an implementation:
    def pour(id:)
      Pour.find(id)
    end

    def pours
      Pour.all
    end
  end
end
