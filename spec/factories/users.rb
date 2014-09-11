# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :name do |n|
    "Jeff Li#{n}"
  end

  factory :user do
    name
    password "creature"
    password_confirmation "creature"
  end
end
