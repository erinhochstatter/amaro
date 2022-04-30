require "rails_helper"

RSpec.describe Types::ScoopType do
  subject { graphql_instance({}, {}) }

  context "fields" do
    subject { described_class }
    let(:fields) { %w[id preparedAt recipe photos] }

    it "has the proper fields" do
      expect(subject.fields.keys).to match_array(fields)
    end
  end
end
