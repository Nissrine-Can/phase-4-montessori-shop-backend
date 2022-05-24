class Item < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id", optional: true

  has_many :favorite_items, dependent: :destroy
  has_many :favorited_by, through: :favorite_items, source: :user
  
  validates :name, presence: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/, message: "Must be a dollar amount" }, numericality: { greater_than: 0, less_than: 500 }

  
end
