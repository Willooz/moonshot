class Update < ActiveRecord::Base
  belongs_to :profile
  belongs_to :shot
end
