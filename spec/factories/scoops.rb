FactoryBot.define do
  factory :scoop do
    association :recipe
    prepared_at { 2.days.ago }
  end
end
