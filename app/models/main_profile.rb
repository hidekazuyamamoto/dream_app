class MainProfile < ApplicationRecord
  belongs_to :user
  has_one_attached :image, dependent: :destroy
  validates :user_name, presence: true
  validates :mission, presence: true
end
