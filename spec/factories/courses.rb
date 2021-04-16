FactoryBot.define do
  factory :course do
    name { Faker::Educator.course_name }
    description { Faker::Lorem.paragraph(sentence_count: 5) }
    number_of_semesters { Faker::Number.within(range: 1..4) }
    allocation { Faker::Number.within(range: 1..100) }
    start_date { Faker::Date.backward(days: 180) }
    end_date { Faker::Date.forward(days: 180) }
  end
end
