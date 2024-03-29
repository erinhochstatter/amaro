require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject { build(:recipe) }
  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
    subject.save!
  end

  context "associations" do
    it { is_expected.to have_many(:ingredient_recipes).dependent(:destroy) }
  end

  context "validations" do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
  end
end
