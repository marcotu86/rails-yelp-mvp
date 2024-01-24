# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#

#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants = [
  { name: "Dishoom", address: "Japan", phone_number: "+49", category: "japanese" },
  { name: "Maria", address: "Italy", phone_number: "+34", category: "italian" },
  { name: "Pomodor", address: "France", phone_number: "+44", category: "french" },
  { name: "Craft", address: "Belgium", phone_number: "+40", category: "belgian" },
  { name: "Steakhouse", address: "China", phone_number: "+49", category: "chinese" }
  ]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
