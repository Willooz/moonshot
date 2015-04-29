class Account < ActiveRecord::Base
  has_many :shots
  has_many :memberships
  has_many :users, through: :memberships

  validates :name, presence: true, uniqueness: true
end
