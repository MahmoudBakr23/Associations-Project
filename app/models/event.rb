class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'

  has_many :invitations, foreign_key: 'attended_event_id'
  has_many :attendees, through: :invitations, source: :attendee

  scope :past, -> { where(['date < ?', Time.now]) }
  scope :future, -> { where(['date > ?', Time.now]) }
end
