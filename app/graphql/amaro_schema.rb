class AmaroSchema < GraphQL::Schema
  query(Types::QueryType)

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
