require 'rails_helper'

RSpec.describe IngredientRecipe, type: :model do
  subject { build(:ingredient_recipe) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
    subject.save!
  end

  context "associations" do
    it { is_expected.to belong_to(:recipe) }
    it { is_expected.to belong_to(:ingredient) }
    it { is_expected.to belong_to(:unit) }
  end
end
