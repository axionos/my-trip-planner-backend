# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # User
# # User.all
# tim = User.find_or_create_by(username: "tim", password_digest: "tim")
#
# # Trip
# # Trip.all # User.all.first.trips
# summer = Trip.find_or_create_by(title: "Summer Vacation", startDate: "2019-8-10", endDate: "2019-8-20", destination: "France", user_id: 2 )
# winter = Trip.find_or_create_by(title: "Winter Vacation", startDate: "2019-12-10", endDate: "2019-12-20", destination: "Japan", user_id: 2 )
#
# # Day
# # Day.all # User.all.first.trips.first.days
# day1 = Day.create(trip_id: 1)
# day2 = Day.create(trip_id: 1)
# day3 = Day.create(trip_id: 1)
#
# Item
#Item.all # Day.all # User.all.first.trips.first.days.first.items
# tower = Item.find_or_create_by(place: "Eiffel Tower", memo: "it is a famous landmark of the city", day_id: 8)
# museum = Item.find_or_create_by(place: "Louvre Museum", memo: "it is a famous museum of the city", day_id: 8)
# shopping = Item.find_or_create_by(place: "Champs-Élysées", memo: "it is a famous shopping street of the city", day_id: 9)
# sightseeing = Item.find_or_create_by(place: "Notre-Dame Cathedral", memo: "it is a famous building of the city", day_id: 10)
# shopping = Item.find_or_create_by(place: "Champs-Élysées", memo: "it is a famous shopping street of the city", day_id: 10)

puts "Seeding Completed"
