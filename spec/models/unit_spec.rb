require 'rails_helper'

RSpec.describe Unit, type: :model do
  subject { build(:unit) }
  it "has a valid factory" do
    subject.valid?
    expect(subject.errors.messages).to eq({})
    subject.save!
  end

  context "validations" do
    it { is_expected.to validate_presence_of :name }
  end
end
