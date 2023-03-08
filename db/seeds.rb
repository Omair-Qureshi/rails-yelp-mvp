# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

restaurantA = {name: 'Restaurant A', address: 'London', category: 'Italian', phone_number: '012345'}
restaurantB = {name: 'Restaurant B', address: 'Paris', category: 'Italian', phone_number: '123456'}
restaurantC = {name: 'Restaurant C', address: 'Milan', category: 'Japanese', phone_number: '234567'}
restaurantD = {name: 'Restaurant D', address: 'Rome', category: 'French', phone_number: '345678'}
restaurantE = {name: 'Restaurant E', address: 'Berlin', category: 'Belgian', phone_number: '456789'}

[restaurantA, restaurantB, restaurantC, restaurantD, restaurantE ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
