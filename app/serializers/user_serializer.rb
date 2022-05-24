class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :sold_items
  has_many :purchased_items
  has_many :favorite_items
  has_many :items
  

end
