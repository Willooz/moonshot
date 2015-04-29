class CreateHighfives < ActiveRecord::Migration
  def change
    create_table :highfives do |t|
      t.references :shot, index: true
      t.references :badge, index: true
      t.references :giver, index: true
      t.references :receiver, index: true

      t.timestamps null: false
    end
    add_foreign_key :highfives, :shots
    add_foreign_key :highfives, :badges
    add_foreign_key :highfives, :profiles, column: :giver_id
    add_foreign_key :highfives, :profiles, column: :receiver_id
  end
end
