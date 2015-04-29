class Membership < ActiveRecord::Base
  belongs_to :account
  belongs_to :user

  validates_presence_of :account
  validates_presence_of :user

  accepts_nested_attributes_for :account
end
