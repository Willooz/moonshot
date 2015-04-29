class Badge < ActiveRecord::Base
  has_many :highfives

  validates :title, presence: true
  validates :picture, presence: true
end
