class Update < ActiveRecord::Base
  belongs_to :profile
  belongs_to :shot
  has_many :events, as: :trigger

  def percentage_done
    bl = self.current_value
    tg = self.shot.target_value
    if bl < tg
      diff = tg - self.shot.baseline_value
      (((bl.to_f - self.shot.baseline_value) / diff) * 100).round
    else
      diff = self.baseline_value - tg
      (((self.shot.baseline_value - bl) / diff) * 100).round
    end
  end

end
