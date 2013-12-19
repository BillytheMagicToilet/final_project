FactoryGirl.define do
  factory :user do
    first_name {Faker::Name.first_name}
    last_name  {Faker::Name.first_name}
    email {Faker::Internet.email}
    bday {(18..100).to_a.sample.years.ago}
    location {Faker::Address.city + ', ' + Faker::Address.state_abbr}
    password 1234567890
  end
end