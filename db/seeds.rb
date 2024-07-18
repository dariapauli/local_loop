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
  description: "We will remove all the garbage in Ackerstraße. Join uns!",
  address: "Torstraße 133, 10119 Berlin",
  date: Date.new(2024, 8, 1),
  time: Time.new(2024, 8, 1, 9, 0),
  category: "Film",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Backyard Beats Concert",
  description: "A day full of live music performances. Come along and celebrate with us!",
  address: "Brunnenstraße 10, 10119 Berlin",
  date: Date.new(2024, 9, 15),
  time: Time.new(2024, 9, 15, 14, 0),
  category: "Music",
  age_group: 3,
  price: 10.00,
  user_id: 1
)

Event.create(
  name: "Local Farmers Market",
  description: "Fresh produce from local farmers.",
  address: "Invalidenstraße 50, 10557 Berlin",
  date: Date.new(2024, 8, 5),
  time: Time.new(2024, 8, 5, 10, 0),
  category: "Market",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Open Air Movie Night",
  description: "Enjoy a classic movie under the stars.",
  address: "Weinbergsweg 1, 10119 Berlin",
  date: Date.new(2024, 8, 10),
  time: Time.new(2024, 8, 10, 20, 0),
  category: "Film",
  age_group: 6,
  price: 5.00,
  user_id: 1
)

Event.create(
  name: "Yoga in the Park",
  description: "Morning yoga session for all levels.",
  address: "Volkspark am Weinbergsweg, 10119 Berlin",
  date: Date.new(2024, 8, 12),
  time: Time.new(2024, 8, 12, 8, 0),
  category: "Sports",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Pet Adoption Fair",
  description: "Find your new best friend.",
  address: "Bernauer Straße 1, 10115 Berlin",
  date: Date.new(2024, 8, 15),
  time: Time.new(2024, 8, 15, 11, 0),
  category: "Pets",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Street Food Festival",
  description: "Taste foods from around the world.",
  address: "Auguststraße 35, 10119 Berlin",
  date: Date.new(2024, 8, 20),
  time: Time.new(2024, 8, 20, 12, 0),
  category: "Food",
  age_group: 6,
  price: 20.00,
  user_id: 1
)

Event.create(
  name: "Comedy Night",
  description: "Laugh out loud with local comedians.",
  address: "Oranienburger Straße 28, 10117 Berlin",
  date: Date.new(2024, 8, 22),
  time: Time.new(2024, 8, 22, 19, 0),
  category: "Comedy",
  age_group: 3,
  price: 15.00,
  user_id: 1
)

Event.create(
  name: "Book Club Meeting",
  description: "Discuss this month's book selection.",
  address: "Rosenthaler Straße 39, 10178 Berlin",
  date: Date.new(2024, 8, 25),
  time: Time.new(2024, 8, 25, 18, 0),
  category: "Literature",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Neighborhood BBQ",
  description: "Come and enjoy a BBQ with your neighbors.",
  address: "Gormannstraße 14, 10119 Berlin",
  date: Date.new(2024, 8, 30),
  time: Time.new(2024, 8, 30, 13, 0),
  category: "Food",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Gardening Workshop",
  description: "Learn how to start your own garden.",
  address: "Chausseestraße 101, 10115 Berlin",
  date: Date.new(2024, 9, 1),
  time: Time.new(2024, 9, 1, 10, 0),
  category: "Gardening",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "History Walk",
  description: "A guided walk through Berlin's history.",
  address: "Unter den Linden 77, 10117 Berlin",
  date: Date.new(2024, 9, 5),
  time: Time.new(2024, 9, 5, 15, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Senior Social Hour",
  description: "A social event for seniors in the community.",
  address: "Friedrichstraße 50, 10117 Berlin",
  date: Date.new(2024, 9, 10),
  time: Time.new(2024, 9, 10, 10, 0),
  category: "Seniors",
  age_group: 5,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Babies and Toddlers Playgroup",
  description: "A fun playgroup for babies and toddlers.",
  address: "Alexanderplatz 1, 10178 Berlin",
  date: Date.new(2024, 9, 12),
  time: Time.new(2024, 9, 12, 10, 0),
  category: "Babies",
  age_group: 0,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Local Art Exhibition",
  description: "Showcasing local artists' work.",
  address: "Karl-Liebknecht-Straße 1, 10178 Berlin",
  date: Date.new(2024, 9, 18),
  time: Time.new(2024, 9, 18, 17, 0),
  category: "Other",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Volunteer Info Session",
  description: "Learn about volunteer opportunities.",
  address: "Müllerstraße 146, 13353 Berlin",
  date: Date.new(2024, 9, 20),
  time: Time.new(2024, 9, 20, 16, 0),
  category: "Help",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Meditation Session",
  description: "Relax and meditate with us.",
  address: "Sophienstraße 22, 10178 Berlin",
  date: Date.new(2024, 9, 25),
  time: Time.new(2024, 9, 25, 18, 0),
  category: "Other",
  age_group: 6,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Kids' Storytelling Hour",
  description: "Storytelling for children aged 3-7.",
  address: "Pappelallee 15, 10437 Berlin",
  date: Date.new(2024, 9, 27),
  time: Time.new(2024, 9, 27, 10, 0),
  category: "Literature",
  age_group: 0,
  price: 0.00,
  user_id: 1
)

Event.create(
  name: "Berlin History Quiz",
  description: "Test your knowledge of Berlin's history.",
  address: "Schönhauser Allee 44, 10435 Berlin",
  date: Date.new(2024, 9, 30),
  time: Time.new(2024, 9, 30, 19, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: 1
)
