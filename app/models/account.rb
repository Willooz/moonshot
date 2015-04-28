class Account < ActiveRecord::Base
  has_many :shots
  has_many :memberships

  validates :name, presence: true, uniqueness: true
end
