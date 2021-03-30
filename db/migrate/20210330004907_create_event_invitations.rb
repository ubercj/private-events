class CreateEventInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :event_invitations do |t|
      t.references :attendee, class_name: "User"
      t.references :invited_event, class_name: "Event"

      t.timestamps
    end
  end
end
