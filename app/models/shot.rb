class Shot < ActiveRecord::Base

  belongs_to :account
  has_many :shot_invites
  has_many :profiles, through: :shot_invites

  validates :baseline_value, presence: true, numericality: true
  validates :target_value  , presence: true, numericality: true
  validates :title,          presence: true
  validates :deadline,       presence: true

  def percentage_done
    bl = self.baseline_value
    tg = self.target_value
    if bl < tg
      ((bl.to_f / tg) * 100).round(2)
    else
      ((tg.to_f / bl) * 100).round(2)
    end
  end
end