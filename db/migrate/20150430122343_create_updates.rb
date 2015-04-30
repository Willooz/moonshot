class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer :current_value
      t.text :description
      t.references :profile, index: true
      t.references :shot, index: true


      t.timestamps null: false
    end
    add_foreign_key :updates, :profiles
    add_foreign_key :updates, :shots
  end
end
