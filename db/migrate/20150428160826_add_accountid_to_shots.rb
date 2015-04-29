class AddAccountidToShots < ActiveRecord::Migration
  def change
    add_reference :shots, :account, index: true
  end
end