class MainProfile < ApplicationRecord
  belongs_to :user
  has_one_attached :image, dependent: :destroy
  
  with_options presence: true do
    validates :user_name
    validates :dead_line
    validates :mission
  end
end
