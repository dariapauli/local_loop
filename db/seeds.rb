# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.create(email: 'example_user@example.com', password: 'password')

Event.create(
  name: "Community Cleanup",
  description: "Community Cleanup is a nice thing",
  address: "123 AI Street, Tech City",
  date: Date.new(2024, 8, 1),
  time: Time.new(2024, 8, 1, 9, 0),
  category: "Technology",
  age_group: "All Ages",
  price: 99.99,
  user_id: 1
)

Event.create(
  name: "Backyard Beats Concert",
  description: "A day full of live music performances.",
  address: "456 Music Ave, Melody Town",
  date: Date.new(2024, 9, 15),
  time: Time.new(2024, 9, 15, 14, 0),
  category: "Entertainment",
  age_group: "18+",
  price: 59.99,
  user_id: 1
)
