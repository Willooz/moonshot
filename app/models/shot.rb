class Shot < ActiveRecord::Base

  belongs_to :account
  has_many :shot_invites
  has_many :invitees, class_name: "Profile", foreign_key: "invitee_id"
  has_many :inviters, class_name: "Profile", foreign_key: "inviter_id"
  has_many :updates
  has_many :highfives
  has_many :badges, through: :highfives

  validates :baseline_value, presence: true, numericality: true
  validates :target_value  , presence: true, numericality: true
  validates :title,          presence: true
  validates :deadline,       presence: true

  def percentage_done
    bl = self.latest_value
    tg = self.target_value
    if bl < tg
      ((bl.to_f / tg) * 100).round(2)
    else
      ((tg.to_f / bl) * 100).round(2)
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