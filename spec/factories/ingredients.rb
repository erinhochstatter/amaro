FactoryBot.define do
  factory :ingredient do
    name { Faker::Food.ingredient }
    description { [ "rum", "whiskey", "gin", "cointreau", "simple syrup", "soda", "ginger ale", "campari", "scotch", "mezcal", "tequila", "coffee liqueur"] }
  end
end
