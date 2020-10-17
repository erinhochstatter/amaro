FactoryBot.define do
  factory :unit do
    name { Faker::Measurement.metric_volume }
  end
end
