class Highfive < ActiveRecord::Base
  belongs_to :shot
  belongs_to :badge
  belongs_to :giver, class_name: 'Profile'
  belongs_to :receiver, class_name: 'Profile'

  validates :shot,     presence: true
  validates :badge,    presence: true
  validates :giver,    presence: true
  validates :receiver, presence: true
end
