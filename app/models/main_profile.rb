class MainProfile < ApplicationRecord
  belongs_to :user
  validates :mission, presence: true
end
