FactoryGirl.define do
  factory :order do
    name Faker::Name.name
    phone Faker::PhoneNumber.phone_number
    access_token SecureRandom.hex.to_s
    street Faker::Address.street_name
    city Faker::Address.city
    state Faker::Address.state_abbr
    zipcode Faker::Address.zip_code
    price Faker::Commerce.price
  end
end
