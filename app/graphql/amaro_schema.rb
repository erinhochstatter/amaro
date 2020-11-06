class AmaroSchema < GraphQL::Schema
  query(Types::QueryType)

  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST

  # Add built-in connections for pagination
  use GraphQL::Pagination::Connections

  def self.resolve_type(type, object, context)
    object.graph_type
  end

  def self.id_from_object(object, type, context)
    object.id
  end

  def self.object_from_id(node_id, context)
    puts node_id
    puts context
  end
end
