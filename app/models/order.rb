class Order < ActiveRecord::Base
  has_many :order_items

  validates :phone, presence: true
  validates :access_token, presence: true
  validates :name, presence: true
end
