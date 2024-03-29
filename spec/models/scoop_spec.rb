require 'rails_helper'

RSpec.describe Scoop, type: :model do
  subject { build(:scoop) }

  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
    subject.save!
  end

  context "associations" do
    it { is_expected.to belong_to(:recipe) }
  end

  context "validations" do
    it { is_expected.to validate_presence_of :prepared_at }
  end
end
