# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

user = User.create(email: "test@test.pl", password: "testest")

5.times do |i|
  Friend.create(name: "Friend ##{i}", email: "##{i}@test.pl", phone: "##{i}")
end

5.times do |i|
  Group.create(name: "Groups ##{i}")
end

5.times do |i|
  Event.create(
      creator: user,
      name: "Event ##{i}", date_start: time_rand, description: "Lorem.....",invite_start: time_rand,invite_end: time_rand,
      member_min: "#{i}",
      member_max: "#{i}",
      time_limit: "2 godzina ",
      take_part: 1,
      public_list: 1
  )
end

