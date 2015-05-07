class Shot < ActiveRecord::Base

  belongs_to :account
  has_many :shot_invites, dependent: :destroy
  has_many :accepted_shot_invites, -> { where in_team: true }, class_name: 'ShotInvite'
  has_many :invitees, class_name: "Profile", foreign_key: "invitee_id", through: :accepted_shot_invites
  has_many :inviters, class_name: "Profile", foreign_key: "inviter_id", through: :shot_invites
  has_many :updates, dependent: :destroy
  has_many :highfives
  has_many :badges, through: :highfives
  has_many :events

  validates :baseline_value, presence: true, numericality: true
  validates :target_value  , presence: true, numericality: true
  validates :title,          presence: true
  validates :unit,           presence: true
  validates :deadline,       presence: true

  def percentage_done
    bl = self.latest_value
    tg = self.target_value
    if bl < tg
      diff = tg - self.baseline_value
      (((bl.to_f - self.baseline_value) / diff) * 100).round
    else
      diff = self.baseline_value - tg
      (((self.baseline_value - bl) / diff) * 100).round
    end
  end

  def shot_team
    result = []
    self.shot_invites.where(in_team: true).each do |invite|
      result << invite.invitee
    end
    result
  end

  def latest_value
    if self.updates.last.nil?
      self.baseline_value
    else
      self.updates.last.current_value
    end
  end
end