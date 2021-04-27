FactoryBot.define do
  factory :institute do
    name { Faker::University.unique.name }
  end
end
