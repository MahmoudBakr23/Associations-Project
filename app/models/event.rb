class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :invitations, class_name: "Invitation", foreign_key: "attended_event_id"
  has_many :attendees, through: :invitations, source: :attendee_id
end
