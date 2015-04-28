class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.boolean :owner
      t.string :role
      t.string :team
      t.references :account, index: true
      t.references :user, index: true


      t.timestamps null: false
    end
    add_foreign_key :memberships, :accounts
    add_foreign_key :memberships, :users
  end
end
