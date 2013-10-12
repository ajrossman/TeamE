User.destroy_all

puts "Creating user 1"
u1 = User.create!(
  name: 'Sleep E Hacker',
  email: 'sleepy@hotmail.com',
  eat_streak: 0,
  exercise_streak: 0,
  outdoor_streak: 0,
  lat: 44.4758,
  long: 73.2119
)

(Date.new(2013,10,1)..Date.new(2013,10,11)).each do |date|
  u1.eat_events.create!(event_date: date)
end

u1.eat_events.find_by(event_date: ['2013-10-10', '2013-10-9']).destroy

(Date.new(2013,10,1)..Date.new(2013,10,11)).each do |date|
  u1.exercise_events.create!(event_date: date)
end

u1.exercise_events.find_by(event_date: '2013-10-09').destroy

(Date.new(2013,10,1)..Date.new(2013,10,11)).each do |date|
  u1.outdoor_events.create!(event_date: date)
end

u1.outdoor_events.find_by(event_date: '2013-10-09').destroy

puts "Creating user 2"
u2 = User.create!(
  name: 'Peter Brown',
  email: 'pete@hotmail.com',
  eat_streak: 20,
  exercise_streak: 20,
  outdoor_streak: 20,
  lat: 44.4758,
  long: 73.2119
)

(Date.new(2013,9,22)..Date.new(2013,10,11)).each do |date|
  u2.eat_events.create!(event_date: date)
end

(Date.new(2013,9,22)..Date.new(2013,10,11)).each do |date|
  u2.exercise_events.create!(event_date: date)
end

(Date.new(2013,9,22)..Date.new(2013,10,11)).each do |date|
  u2.outdoor_events.create!(event_date: date)
end

puts "Creating user 3"

u3 = User.create!(
  name: 'AJ Rossman',
  email: 'a@hotmail.com',
  eat_streak: 20,
  exercise_streak: 20,
  outdoor_streak: 20,
  lat: 44.2035,
  long: 72.5623
)

(Date.new(2013,9,22)..Date.new(2013,10,11)).each do |date|
  u3.eat_events.create!(event_date: date)
end

(Date.new(2013,9,22)..Date.new(2013,10,11)).each do |date|
  u3.exercise_events.create!(event_date: date)
end

(Date.new(2013,9,22)..Date.new(2013,10,11)).each do |date|
  u3.outdoor_events.create!(event_date: date)
end
