class Profile < ActiveRecord::Base
  belongs_to :account
  belongs_to :user

  has_many :updates
  has_many :shot_invites_sent, class_name: "ShotInvite", foreign_key: "inviter_id"
  has_many :shot_invites_received, class_name: "ShotInvite", foreign_key: "invitee_id"
  has_many :highfives_given, class_name: "Highfive", foreign_key: "giver_id"
  has_many :highfives_received, class_name: "Highfive", foreign_key: "receiver_id"

  has_many :shots, through: :shot_invites_received
  has_many :badges, through: :highfives_received

  validates_presence_of :account
  validates_presence_of :user

  def name
    self.user.name
  end
end
