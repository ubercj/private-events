class EventInvitation < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  belongs_to :invited_event, class_name: "Event"
end
