class ShotInvite < ActiveRecord::Base
  belongs_to :shot
  belongs_to :inviter, class_name: 'User'
  belongs_to :invitee, class_name: 'User'

  validates :shot,    presence: true
  validates :inviter, presence: true
  validates :invitee, presence: true, uniqueness: { scope: :shot }
end
