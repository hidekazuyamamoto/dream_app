class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :item_image
  validates :name, presence: true
  validates :price, presence: true
end
