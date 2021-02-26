class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations do |t|
      t.references :invitee, index: true, foreign_key: {to_table: :users}
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
