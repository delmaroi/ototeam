# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  Friend.create(name: "Friend ##{i}", email: "##{i}@test.pl", phone: "##{i}")
end

5.times do |i|
  Group.create(name: "Groups ##{i}")
end

5.times do |i|
  Event.create(name: "Event ##{i}", date_start: time_rand, description: "Lorem.....")
end

