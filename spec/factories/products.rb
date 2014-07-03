# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    title "MyString"
    descript "MyText"
    image_url "MyString"
    price "9.99"
  end
end
