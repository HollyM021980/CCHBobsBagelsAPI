require 'rails_helper'

RSpec.describe Order, :type => :model do

 it "has a valid factory" do
    expect(FactoryGirl.build_stubbed(:order)).to be_valid
  end

  it "is invalid without a phone" do
    order = FactoryGirl.build(:order, phone: nil)
    order.valid?
    expect(order.errors[:phone]).to include("can't be blank")
  end

  it "is invalid without an access token" do
    order = FactoryGirl.build(:order, access_token: nil)
    order.valid?
    expect(order.errors[:access_token]).to include("can't be blank")
  end

  it "is invalid without a name" do
    order = FactoryGirl.build(:order, name: nil)
    order.valid?
    expect(order.errors[:name]).to include("can't be blank")
  end
end
