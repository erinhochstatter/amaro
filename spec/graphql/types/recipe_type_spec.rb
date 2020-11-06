require "rails_helper"

RSpec.describe Types::RecipeType do
  subject { graphql_instance({}, {}) }

  context "fields" do
    subject { described_class }
    let(:fields) { %w[id title mixologist description originalUrl ingredientRecipes] }

    it "has the proper fields" do
      expect(subject.fields.keys).to match_array(fields)
    end
  end
end
