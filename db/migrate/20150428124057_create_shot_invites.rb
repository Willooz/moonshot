class CreateShotInvites < ActiveRecord::Migration
  def change
    create_table :shot_invites do |table|
      table.references :shot, index: true
      table.references :inviter, index: true
      table.references :invitee, index: true
      table.string :state, default: "pending"

      table.timestamps null: false
    end
    add_foreign_key :shot_invites, :shots
    add_foreign_key :shot_invites, :profiles, column: :inviter_id
    add_foreign_key :shot_invites, :profiles, column: :invitee_id
  end
end
