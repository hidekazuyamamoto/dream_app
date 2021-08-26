class Where < ActiveHash::Base
  self.data = [
    { id: 1, name: '特になし' },
    { id: 2, name: 'Twitterで知った' },
    { id: 3, name: 'Facebookで知った' }
    { id: 4, name: 'Instagramで知った' }
  ]

  include ActiveHash::Associations
  has_many :sub_purchased_logs
end