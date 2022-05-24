class ItemSerializer < ActiveModel::Serializer
  attributes :id, :image,  :name, :description, :price, :status, :sold, :categories
  #has_many :favorited_by
  belongs_to :seller
  
  def price
   "$#{'%.2f' % self.object.price}"
  end

  def status
    if self.object.sold
      "sold"
    else 
      "Buy Now"
    end
  end

  # def favorited_by

  #  favoriting_item_user = FavoriteItem.where(user_id: current_user.id, item_id: object.id).map{ |fav_item_user| fav_item_user.user_id }
  #  return favoriting_item_user

  # end
    
   
end
