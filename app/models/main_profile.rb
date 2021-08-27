class MainProfile < ApplicationRecord
  belongs_to :user
  has_one_attached :image, dependent: :destroy
  validates :name, presence: true
  validates :mission, presence: true
end
