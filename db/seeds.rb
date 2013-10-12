User.destroy_all

puts "Creating user 1"
u1 = User.create!(
  name: 'Sleep E Hacker',
  email: 'sleepy@hotmail.com',
  eat_streak: 1,
  exercise_streak: 2,
  outdoor_streak: 2,
  eat_record: 9,
  exercise_record: 8,
  outdoor_record: 8,
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
  name: 'Freddy Getfit',
  email: 'pete@hotmail.com',
  eat_streak: 20,
  exercise_streak: 20,
  outdoor_streak: 20,
  eat_record: 20,
  exercise_record: 20,
  outdoor_record: 20,
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
  name: 'Margot Faster',
  email: 'margot@hotmail.com',
  eat_streak: 20,
  exercise_streak: 20,
  outdoor_streak: 20,
  eat_record: 20,
  exercise_record: 20,
  outdoor_record: 20,
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

puts "Creating suggestions"

s1 = Suggestion.create!(
  lat: 44.2916,
  long: -73.247,
  date: Date.today,
  link: "http://www.bloomfieldfarm.net/",
  what: "Eat fresh spinach",
  where: "Bloomfield Farm Stand",
  why: "High in Vitamins A and K, low in calories, may lower risk of cancer"
  )

s2 = Suggestion.create!(
  lat: 44.2916,
  long: -73.247,
  date: Date.today,
  link: "http://www.bloomfieldfarm.net/",
  what: "Eat fresh harvested carrots",
  where: "Bloomfield Farm Stand",
  why: "Reduces risk of cardiovascular disease, high in anti-oxidants and Vitamin C"
  )

s3 = Suggestion.create!(
  lat: 44.4716,
  long: -73.213,
  date: Date.today,
  link: "http://www.arethusafarmvermont.com/Arethusa_Farm/Home.html",
  what: "Eat fresh harvested carrots",
  where: "Arethusa Farm via the City Market",
  why: "Reduces risk of cardiovascular disease, high in anti-oxidants and Vitamin C"
  )

s4 = Suggestion.create!(
  lat: 44.507,
  long: -73.234,
  date: Date.today,
  link: "http://www.enjoyburlington.com/parks.cfm",
  what: "Hike a local park",
  where: "Ethan Allen Park",
  why: "Increased cardio-respiratory fitness, lower risk of heart disease, weight reduction, reduced stress"
  )

s5 = Suggestion.create!(
  lat: 40.507,
  long: -73.234,
  date: Date.today,
  link: "http://www.radicalrootsvt.com/",
  what: "Cook up some fresh beets",
  where: "Radical Roots Farm at Rutland Farmers Market",
  why: "High in anti-oxidants, anti-imflamitory, high in fiber, may reduce certain cancers"
  )
