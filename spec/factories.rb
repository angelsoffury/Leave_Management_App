FactoryGirl.define do
  factory :user do
    name     "Ahalyadas M"
    email    { Faker::Internet.email }
    password "foobar"
    password_confirmation "foobar"
  end
end