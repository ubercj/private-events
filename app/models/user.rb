class User < ApplicationRecord
  validates :name, presence: true

  has_many :created_events, class_name: "Event", foreign_key: :creator_id
  has_many :event_invitations, foreign_key: "attendee_id"
  has_many :attended_events, through: :event_invitations, source: :invited_event
end
