class Event < ActiveRecord::Base
  belongs_to :shot
  belongs_to :trigger, polymorphic: true

  validates :shot, presence: true
  validates :trigger, presence: true
end
