class ShotInvite < ActiveRecord::Base
  belongs_to :shot
  belongs_to :inviter, class_name: 'Profile'
  belongs_to :invitee, class_name: 'Profile'
  has_many :events, as: :trigger

  validates :shot,    presence: true
  validates :inviter, presence: true
  validates :invitee, presence: true, uniqueness: { scope: :shot }
end
