
User.create!(name:"Vitalie")
User.create!(name:"Mahmoud")
User.create!(name:"Ariel")
User.create!(name:"Olea")
User.create!(name:"Adam")

puts "Users created"


5.times do |event|
Event.create!(
  name:"Event #{event}",
  description: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consequat",
  location:"Chisiau",
  date: Time.now + 2.day,
  user: User.second
)
end


puts "Events created"