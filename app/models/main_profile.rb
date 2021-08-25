class MainProfile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :mission, presence: true
end
