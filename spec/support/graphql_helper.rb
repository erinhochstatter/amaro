module GraphQLHelper
  def graphql_instance(*args)
    described_class.send(:new, *args)
  end

  def mutation_instance(object, context)
    described_class.send(:new, object: object, context: context)
  end
end
