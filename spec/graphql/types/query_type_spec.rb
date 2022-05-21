require "rails_helper"

RSpec.describe Types::QueryType do
  subject { graphql_instance({}, {}) }
  let(:pours) { create_list(:pour, 3) }
  let(:scoops) { create_list(:scoop, 3) }

  context "fields" do
    subject { described_class }
    let(:fields) { %w[pour pours ingredientRecipe ingredientRecipes recipe recipes scoop scoops] }

    it "has the proper fields" do
      expect(subject.fields.keys).to match_array(fields)
    end
  end

  describe "#pour" do
    let(:pour) { pours.first }

    it "is the pour for the given ID" do
      expect(subject.pour(id: pours.first.id)).to eq(pours.first)
    end
  end

  describe "#pours" do

    it "all of the pours" do
      expect(subject.pours).to match_array(pours)
    end
  end

  describe "#scoop" do
  let(:scoop) { scoops.first }

    it "is the scoop for the given ID" do
      expect(subject.scoop(id: scoops.first.id)).to eq(scoops.first)
    end
  end

  describe "#scoops" do
    it "all of the scoops" do
      expect(subject.scoops).to match_array(scoops)
    end
  end
end
