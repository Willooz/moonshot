class Update < ActiveRecord::Base
  belongs_to :profile
  belongs_to :shot
  has_many :events, as: :trigger

  def percentage_done
    bl = self.current_value
    tg = self.shot.target_value

    if bl < tg
      ((bl.to_f / tg) * 100).round
    else
      ((tg.to_f / bl) * 100).round
    end

  end

end
