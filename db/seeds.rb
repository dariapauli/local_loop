# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
user = User.create!(email: 'example_user@example.com', password: 'password', first_name: 'Luis')

Event.destroy_all
Event.create!(
  name: "Community Cleanup",
  description: "We will remove all the garbage in Torstraße. Join uns!",
  address: "Torstraße 133, 10119 Berlin",
  date: Date.new(2024, 8, 1),
  time: Time.new(2024, 8, 1, 9, 0),
  category: "Film",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Backyard Beats Concert",
  description: "A day full of live music performances. Come along and celebrate with us!",
  address: "Chausseestraße 110, 10115 Berlin",
  date: Date.new(2024, 9, 15),
  time: Time.new(2024, 9, 15, 14, 0),
  category: "Music",
  age_group: 3,
  price: 10.00,
  user_id: user.id
)

Event.create!(
  name: "Local Farmers Market",
  description: "Fresh produce from local farmers.",
  address: "Invalidenstraße 50, 10115 Berlin",
  date: Date.new(2024, 8, 5),
  time: Time.new(2024, 8, 5, 10, 0),
  category: "Market",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Open Air Movie Night",
  description: "Enjoy a classic movie under the stars.",
  address: "Invalidenstraße 43, 10115 Berlin",
  date: Date.new(2024, 8, 10),
  time: Time.new(2024, 8, 10, 20, 0),
  category: "Film",
  age_group: 6,
  price: 5.00,
  user_id: user.id
)

Event.create!(
  name: "Yoga in the Park",
  description: "Morning yoga session for all levels.",
  address: "Chausseestraße 85, 10115 Berlin",
  date: Date.new(2024, 8, 12),
  time: Time.new(2024, 8, 12, 8, 0),
  category: "Sports",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Pet Adoption Fair",
  description: "Find your new best friend.",
  address: "Torstraße 58, 10115 Berlin",
  date: Date.new(2024, 8, 15),
  time: Time.new(2024, 8, 15, 11, 0),
  category: "Pets",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Street Food Festival",
  description: "Taste foods from around the world.",
  address: "Chausseestraße 36, 10115 Berlin",
  date: Date.new(2024, 8, 20),
  time: Time.new(2024, 8, 20, 12, 0),
  category: "Food",
  age_group: 6,
  price: 20.00,
  user_id: user.id
)

Event.create!(
  name: "Comedy Night",
  description: "Laugh out loud with local comedians.",
  address: "Torstraße 225, 10115 Berlin",
  date: Date.new(2024, 8, 22),
  time: Time.new(2024, 8, 22, 19, 0),
  category: "Comedy",
  age_group: 3,
  price: 15.00,
  user_id: user.id
)

Event.create!(
  name: "Book Club Meeting",
  description: "Discuss this month's book selection.",
  address: "Invalidenstraße 116, 10115 Berlin",
  date: Date.new(2024, 8, 25),
  time: Time.new(2024, 8, 25, 18, 0),
  category: "Literature",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Neighborhood BBQ",
  description: "Come and enjoy a BBQ with your neighbors.",
  address: "Chausseestraße 75, 10115 Berlin",
  date: Date.new(2024, 8, 30),
  time: Time.new(2024, 8, 30, 13, 0),
  category: "Food",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Gardening Workshop",
  description: "Learn how to start your own garden.",
  address: "Chausseestraße 101, 10115 Berlin",
  date: Date.new(2024, 9, 1),
  time: Time.new(2024, 9, 1, 10, 0),
  category: "Gardening",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "History Walk",
  description: "A guided walk through Berlin's history.",
  address: "Invalidenstraße 3, 10115 Berlin",
  date: Date.new(2024, 9, 5),
  time: Time.new(2024, 9, 5, 15, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Senior Social Hour",
  description: "A social event for seniors in the community.",
  address: "Torstraße 126, 10115 Berlin",
  date: Date.new(2024, 9, 10),
  time: Time.new(2024, 9, 10, 10, 0),
  category: "Seniors",
  age_group: 5,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Babies and Toddlers Playgroup",
  description: "A fun playgroup for babies and toddlers.",
  address: "Torstraße 129, 10115 Berlin",
  date: Date.new(2024, 9, 12),
  time: Time.new(2024, 9, 12, 10, 0),
  category: "Babies",
  age_group: 0,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Local Art Exhibition",
  description: "Showcasing local artists' work.",
  address: "Chausseestraße 40, 10115 Berlin",
  date: Date.new(2024, 9, 18),
  time: Time.new(2024, 9, 18, 17, 0),
  category: "Other",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Volunteer Info Session",
  description: "Learn about volunteer opportunities.",
  address: "Invalidenstraße 35, 10115 Berlin",
  date: Date.new(2024, 9, 20),
  time: Time.new(2024, 9, 20, 16, 0),
  category: "Help",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Meditation Session",
  description: "Relax and meditate with us.",
  address: "Invalidenstraße 50, 10115 Berlin",
  date: Date.new(2024, 9, 25),
  time: Time.new(2024, 9, 25, 18, 0),
  category: "Other",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Kids' Storytelling Hour",
  description: "Storytelling for children aged 3-7.",
  address: "Chausseestraße 65, 10115 Berlin",
  date: Date.new(2024, 9, 27),
  time: Time.new(2024, 9, 27, 10, 0),
  category: "Literature",
  age_group: 0,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Berlin History Quiz",
  description: "Test your knowledge of Berlin's history.",
  address: "Torstraße 190, 10115 Berlin",
  date: Date.new(2024, 9, 30),
  time: Time.new(2024, 9, 30, 19, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Photography Workshop",
  description: "Learn the basics of photography.",
  address: "Invalidenstraße 90, 10115 Berlin",
  date: Date.new(2024, 10, 1),
  time: Time.new(2024, 10, 1, 10, 0),
  category: "Lesson",
  age_group: 6,
  price: 20.00,
  user_id: user.id
)

Event.create!(
  name: "Jazz Evening",
  description: "Enjoy a relaxing evening of jazz music.",
  address: "Torstraße 68, 10115 Berlin",
  date: Date.new(2024, 10, 5),
  time: Time.new(2024, 10, 5, 20, 0),
  category: "Music",
  age_group: 6,
  price: 15.00,
  user_id: user.id
)

Event.create!(
  name: "Craft Beer Tasting",
  description: "Taste the best craft beers in town.",
  address: "Invalidenstraße 25, 10115 Berlin",
  date: Date.new(2024, 10, 8),
  time: Time.new(2024, 10, 8, 18, 0),
  category: "Drinks",
  age_group: 6,
  price: 20.00,
  user_id: user.id
)

Event.create!(
  name: "Community Theater",
  description: "Watch a play performed by local actors.",
  address: "Chausseestraße 66, 10115 Berlin",
  date: Date.new(2024, 10, 12),
  time: Time.new(2024, 10, 12, 19, 0),
  category: "Film",
  age_group: 6,
  price: 10.00,
  user_id: user.id
)

Event.create!(
  name: "Science Fair",
  description: "Explore science projects by local students.",
  address: "Torstraße 85, 10115 Berlin",
  date: Date.new(2024, 10, 15),
  time: Time.new(2024, 10, 15, 10, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Wine and Cheese Evening",
  description: "Taste fine wines and cheeses.",
  address: "Invalidenstraße 70, 10115 Berlin",
  date: Date.new(2024, 10, 20),
  time: Time.new(2024, 10, 20, 18, 0),
  category: "Drinks",
  age_group: 6,
  price: 25.00,
  user_id: user.id
)

Event.create!(
  name: "Dance Workshop",
  description: "Learn new dance moves in this fun workshop.",
  address: "Chausseestraße 82, 10115 Berlin",
  date: Date.new(2024, 10, 25),
  time: Time.new(2024, 10, 25, 14, 0),
  category: "Sports",
  age_group: 6,
  price: 10.00,
  user_id: user.id
)

Event.create!(
  name: "Local History Talk",
  description: "A talk on the history of our neighborhood.",
  address: "Invalidenstraße 100, 10115 Berlin",
  date: Date.new(2024, 10, 28),
  time: Time.new(2024, 10, 28, 17, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Puppet Show",
  description: "A fun puppet show for children.",
  address: "Chausseestraße 90, 10115 Berlin",
  date: Date.new(2024, 11, 1),
  time: Time.new(2024, 11, 1, 10, 0),
  category: "Babies",
  age_group: 0,
  price: 5.00,
  user_id: user.id
)

Event.create!(
  name: "Chess Club Meeting",
  description: "Join us for a game of chess.",
  address: "Invalidenstraße 20, 10115 Berlin",
  date: Date.new(2024, 11, 5),
  time: Time.new(2024, 11, 5, 17, 0),
  category: "Other",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Film Screening",
  description: "Watch an independent film.",
  address: "Torstraße 95, 10115 Berlin",
  date: Date.new(2024, 11, 8),
  time: Time.new(2024, 11, 8, 19, 0),
  category: "Film",
  age_group: 6,
  price: 5.00,
  user_id: user.id
)

Event.create!(
  name: "Knitting Circle",
  description: "Bring your knitting projects and enjoy a social gathering.",
  address: "Chausseestraße 78, 10115 Berlin",
  date: Date.new(2024, 11, 12),
  time: Time.new(2024, 11, 12, 14, 0),
  category: "Other",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Holiday Craft Fair",
  description: "Shop for handmade crafts for the holidays.",
  address: "Invalidenstraße 120, 10115 Berlin",
  date: Date.new(2024, 11, 15),
  time: Time.new(2024, 11, 15, 10, 0),
  category: "Market",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "New Year's Eve Party",
  description: "Celebrate the New Year with your neighbors.",
  address: "Torstraße 115, 10115 Berlin",
  date: Date.new(2024, 12, 31),
  time: Time.new(2024, 12, 31, 21, 0),
  category: "Party",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Cooking Class",
  description: "Learn to cook a new dish.",
  address: "Invalidenstraße 85, 10115 Berlin",
  date: Date.new(2024, 11, 18),
  time: Time.new(2024, 11, 18, 17, 0),
  category: "Lesson",
  age_group: 6,
  price: 20.00,
  user_id: user.id
)

Event.create!(
  name: "Parents' Night Out",
  description: "Parents can enjoy a night out while we watch the kids.",
  address: "Chausseestraße 71, 10115 Berlin",
  date: Date.new(2024, 12, 5),
  time: Time.new(2024, 12, 5, 18, 0),
  category: "Babies",
  age_group: 0,
  price: 10.00,
  user_id: user.id
)

Event.create!(
  name: "Language Exchange Meetup",
  description: "Practice languages with native speakers.",
  address: "Torstraße 102, 10115 Berlin",
  date: Date.new(2024, 12, 10),
  time: Time.new(2024, 12, 10, 19, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Holiday Caroling",
  description: "Sing holiday carols around the neighborhood.",
  address: "Chausseestraße 95, 10115 Berlin",
  date: Date.new(2024, 12, 20),
  time: Time.new(2024, 12, 20, 18, 0),
  category: "Music",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)

Event.create!(
  name: "Winter Wonderland",
  description: "Experience a winter wonderland with your community.",
  address: "Invalidenstraße 60, 10115 Berlin",
  date: Date.new(2024, 12, 25),
  time: Time.new(2024, 12, 25, 12, 0),
  category: "Party",
  age_group: 6,
  price: 0.00,
  user_id: user.id
)
