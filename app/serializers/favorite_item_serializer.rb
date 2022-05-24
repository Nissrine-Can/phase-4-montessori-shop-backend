class FavoriteItemSerializer < ActiveModel::Serializer
  attributes :id, :item_id
  has_one :user
  has_one :item

  
end
