class Update < ActiveRecord::Base
  belongs_to :profile
  belongs_to :shot
  has_many :events, as: :trigger

end
