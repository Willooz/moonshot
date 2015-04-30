class Profile < ActiveRecord::Base
  belongs_to :account
  belongs_to :user
  has_many :shot_invites

  validates_presence_of :account
  validates_presence_of :user

  def name
    self.user.name
  end
end
