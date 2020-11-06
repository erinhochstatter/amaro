require "rails_helper"

RSpec.describe Types::IngredientType do
  subject { graphql_instance({}, {}) }

  context "fields" do
    subject { described_class }
    let(:fields) { %w[id name description] }

    it "has the proper fields" do
      expect(subject.fields.keys).to match_array(fields)
    end
  end
end
