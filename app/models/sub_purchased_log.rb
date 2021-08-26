class SubPurchasedLog < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :where
  belongs_to :area

  belongs_to :item

  with_options presence: true do
    validates :quantitiy
    validates :price
    validates :name
    validates :postal_code
    validates :city
    validates :address
  end
end
