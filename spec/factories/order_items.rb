FactoryGirl.define do
  factory :order_item do
    name Faker::Commerce.product_name
    price Faker::Commerce.price
    special_requests Faker::Lorem.sentence
    order
  end
end
