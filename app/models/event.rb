class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_invitations, foreign_key: "invited_event_id"
  has_many :attendees, through: :event_invitations

  scope :past, -> { where("date < ?", Date.today) }
  scope :upcoming, -> { where("date >= ?", Date.today) }

  # def self.past
  #   self.where("date < ?", Date.today)
  # end

  # def self.upcoming
  #   self.where("date >= ?", Date.today)
  # end
end
