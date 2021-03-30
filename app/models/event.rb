class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_invitations, foreign_key: "invited_event_id"
  has_many :attendees, through: :event_invitations
end
