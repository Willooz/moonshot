class Shot < ActiveRecord::Base

  belongs_to :account
  has_many :shot_invites
  has_many :users, through: :shot_invites

  validates :baseline_value, presence: true, numericality: true
  validates :target_value  , presence: true, numericality: true
  validates :title,          presence: true
  validates :deadline,       presence: true
end
