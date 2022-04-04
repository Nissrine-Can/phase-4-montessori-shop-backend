class Item < ApplicationRecord
  belongs_to :seller
  belongs_to :buyer
end
