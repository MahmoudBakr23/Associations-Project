User.create!(name: 'Vitalie')
User.create!(name: 'Mahmoud')
User.create!(name: 'Ariel')
User.create!(name: 'Olea')
User.create!(name: 'Adam')

puts 'Users created'

5.times do |event|
  Event.create!(
    name: "Event #{event}",
    description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consequat',
    location: 'Chisiau',
    date: Time.now + 2.day,
    creator: User.second
  )
end

3.times do |event|
  Event.create!(
    name: "Event #{event}",
    description: 'These are all past events',
    location: 'In the middle of nowhere',
    date: Time.now - 5.day,
    creator: User.second
  )
end

puts 'Events created'

Invitation.create!(attendee: User.second, attended_event: Event.last)
Invitation.create!(attendee: User.third, attended_event: Event.last)
Invitation.create!(attendee: User.fourth, attended_event: Event.last)
Invitation.create!(attendee: User.last, attended_event: Event.last)

Invitation.create!(attendee: User.second, attended_event: Event.first)
Invitation.create!(attendee: User.third, attended_event: Event.first)
Invitation.create!(attendee: User.fourth, attended_event: Event.first)
Invitation.create!(attendee: User.last, attended_event: Event.first)

puts 'Invitations created'
