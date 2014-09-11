# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    title "Coffeescript"
    description "Lorem Ipsum"
    image_url "images/cs.jpg"
    price "9.99"
  end
end
