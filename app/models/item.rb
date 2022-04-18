class Item < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id", optional: true


  validates :name, presence: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/, message: "Must be a dollar amount" }, numericality: { greater_than: 0, less_than: 500 }
end
