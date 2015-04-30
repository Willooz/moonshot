class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :title
      t.attachment :picture

      t.timestamps null: false
    end
  end
end
