@trail_1 = Trail.create!(name: "Trail 1", length: 1, address: "Boulder, CO")
@trail_2 = Trail.create!(name: "Trail 2", length: 2, address: "Boulder, CO")
@trail_3 = Trail.create!(name: "Trail 3", length: 3, address: "Golden, CO")
@trail_3 = Trail.create!(name: "Trail 4", length: 4, address: "Golden, CO")

@trip_1 = Trip.create!(name: "Trip_1")
@trip_2 = Trip.create!(name: "Trip_2")
@trip_3 = Trip.create!(name: "Trip_3")
@trip_4 = Trip.create!(name: "Trip_4")
@trip_5 = Trip.create!(name: "Trip_5")

@trip_1.trails << [@trail_1, @trail_2]
@trip_2.trails << [@trail_1, @trail_2]
@trip_3.trails << [@trail_3, @trail_4]
@trip_4.trails << [@trail_3, @trail_4]
@trip_5.trails << [@trail_1, @trail_2, @trail_3, @trail_4]




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
