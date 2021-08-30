class SubPurchasedLog < ApplicationRecord
  attr_accessor :token
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :where
  belongs_to :area

  belongs_to :item

  with_options presence: true do
    validates :quantitiy
    validates :price
    validates :purchased_name
    validates :postal_code
    validates :city
    validates :address
  end
end
