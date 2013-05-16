class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :host_id
      t.string :name
      t.string :email
      t.boolean :rsvp
    end
  end
end
