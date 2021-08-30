class Item < ApplicationRecord
  belongs_to :user
  has_many :sub_purchased_logs,  dependent: :destroy
  has_one_attached :item_image,  dependent: :destroy
  validates :item_name, presence: true
  validates :price, presence: true
end
