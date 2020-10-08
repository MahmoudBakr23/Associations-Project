class User < ApplicationRecord
  has_many :events, class_name: "Event", foreign_key: "creator_id"
  has_many :invitations, foreign_key: "attendee_id"
  has_many :attended_events, through: :invitations, source: :attended_event_id
end
