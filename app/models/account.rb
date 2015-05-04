class Account < ActiveRecord::Base
  has_many :shots
  has_many :profiles
  has_many :users, through: :profiles
  has_many :events, through: :shots

  validates :name, presence: true, uniqueness: true
end
