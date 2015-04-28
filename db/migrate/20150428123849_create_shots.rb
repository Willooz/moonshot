class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :title
      t.string :description
      t.integer :baseline_value
      t.integer :target_value
      t.boolean :accomplished
      t.date :deadline

      t.timestamps null: false
    end
  end
end
