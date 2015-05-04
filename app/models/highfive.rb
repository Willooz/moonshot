class Highfive < ActiveRecord::Base
  belongs_to :shot
  belongs_to :badge
  belongs_to :giver, class_name: 'Profile'
  belongs_to :receiver, class_name: 'Profile'
  has_many :events, as: :trigger

  validates :shot,     presence: true
  validates :badge,    presence: true
  validates :giver,    presence: true
  validates :receiver, presence: true
  validates :receiver, uniqueness: { scope: [:shot, :badge, :giver], message: "You have already given this badge to this user for the same shot" }

end
