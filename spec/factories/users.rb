FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    family_name           { Faker::Name.initials(number: 2) }
    first_name            { Faker::Name.initials(number: 2) }
    family_name_kana      { Faker::Name.initials(number: 2) }
    first_name_kana       { Faker::Name.initials(number: 2) }
    date_of_birth         { Faker::Date.birthday(min_age: 18, max_age: 65) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
  end
end
