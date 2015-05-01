class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :trigger_id
      t.string :trigger_type
      t.integer :shot_id

      t.timestamps null: false
    end
  end
end
