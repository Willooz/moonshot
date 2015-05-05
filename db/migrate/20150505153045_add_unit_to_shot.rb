class AddUnitToShot < ActiveRecord::Migration
  def change
    add_column :shots, :unit, :string
  end
end
