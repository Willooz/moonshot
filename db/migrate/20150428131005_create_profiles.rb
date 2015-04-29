class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.boolean :owner
      t.string :role
      t.string :team
      t.references :account, index: true
      t.references :user, index: true


      t.timestamps null: false
    end
    add_foreign_key :profiles, :accounts
    add_foreign_key :profiles, :users
  end
end
