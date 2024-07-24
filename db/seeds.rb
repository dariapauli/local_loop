# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

Event.delete_all
Profile.delete_all
User.delete_all

u1 = User.create!(email: 'jacob@example.com', password: 'password', first_name: 'Jacob')
filee1 = URI.open("https://images.pexels.com/photos/1036627/pexels-photo-1036627.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p1 = u1.profile
profile_p1.photo.attach(io: filee1, filename: "nes.png", content_type: "image/png")
profile_p1.save

u2 = User.create!(email: 'lily@example.com', password: 'password', first_name: 'Lily')
filee2 = URI.open("https://images.pexels.com/photos/1036620/pexels-photo-1036620.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p2 = u2.profile
profile_p2.photo.attach(io: filee2, filename: "nes.png", content_type: "image/png")
profile_p2.save

u3 = User.create!(email: 'william@example.com', password: 'password', first_name: 'William')
filee3 = URI.open("https://images.pexels.com/photos/1073097/pexels-photo-1073097.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p3 = u3.profile
profile_p3.photo.attach(io: filee3, filename: "nes.png", content_type: "image/png")
profile_p3.save

u4 = User.create!(email: 'emily@example.com', password: 'password', first_name: 'Emily')
filee4 = URI.open("https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p4 = u4.profile
profile_p4.photo.attach(io: filee4, filename: "nes.png", content_type: "image/png")
profile_p4.save

u5 = User.create!(email: 'george@example.com', password: 'password', first_name: 'George')
filee5 = URI.open("https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p5 = u5.profile
profile_p5.photo.attach(io: filee5, filename: "nes.png", content_type: "image/png")
profile_p5.save

u6 = User.create!(email: 'olivia@example.com', password: 'password', first_name: 'Olivia')
filee6 = URI.open("https://images.pexels.com/photos/1181519/pexels-photo-1181519.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p6 = u6.profile
profile_p6.photo.attach(io: filee6, filename: "nes.png", content_type: "image/png")
profile_p6.save

u7 = User.create!(email: 'harry@example.com', password: 'password', first_name: 'Harry')
filee7 = URI.open("https://images.pexels.com/photos/834863/pexels-photo-834863.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p7 = u7.profile
profile_p7.photo.attach(io: filee7, filename: "nes.png", content_type: "image/png")
profile_p7.save

u8 = User.create!(email: 'amelia@example.com', password: 'password', first_name: 'Amelia')
filee8 = URI.open("https://images.pexels.com/photos/1181690/pexels-photo-1181690.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p8 = u8.profile
profile_p8.photo.attach(io: filee8, filename: "nes.png", content_type: "image/png")
profile_p8.save

u9 = User.create!(email: 'james@example.com', password: 'password', first_name: 'James')
filee9 = URI.open("https://images.pexels.com/photos/1139743/pexels-photo-1139743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p9 = u9.profile
profile_p9.photo.attach(io: filee9, filename: "nes.png", content_type: "image/png")
profile_p9.save

u10 = User.create!(email: 'sophia@example.com', password: 'password', first_name: 'Sophia')
filee10 = URI.open("https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p10 = u10.profile
profile_p10.photo.attach(io: filee10, filename: "nes.png", content_type: "image/png")
profile_p10.save

u11 = User.create!(email: 'thomas@example.com', password: 'password', first_name: 'Thomas')
filee11 = URI.open("https://images.pexels.com/photos/842811/pexels-photo-842811.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p11 = u11.profile
profile_p11.photo.attach(io: filee11, filename: "nes.png", content_type: "image/png")
profile_p11.save

u12 = User.create!(email: 'isabella@example.com', password: 'password', first_name: 'Isabella')
filee12 = URI.open("https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p12 = u12.profile
profile_p12.photo.attach(io: filee12, filename: "nes.png", content_type: "image/png")
profile_p12.save

u13 = User.create!(email: 'arthur@example.com', password: 'password', first_name: 'Arthur')
filee13 = URI.open("https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p13 = u13.profile
profile_p13.photo.attach(io: filee13, filename: "nes.png", content_type: "image/png")
profile_p13.save

u14 = User.create!(email: 'olivia2@example.com', password: 'password', first_name: 'Olivia')
filee14 = URI.open("https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p14 = u14.profile
profile_p14.photo.attach(io: filee14, filename: "nes.png", content_type: "image/png")
profile_p14.save

u15 = User.create!(email: 'edward@example.com', password: 'password', first_name: 'Edward')
filee15 = URI.open("https://images.pexels.com/photos/1300402/pexels-photo-1300402.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p15 = u15.profile
profile_p15.photo.attach(io: filee15, filename: "nes.png", content_type: "image/png")
profile_p15.save

u16 = User.create!(email: 'mia@example.com', password: 'password', first_name: 'Mia')
filee16 = URI.open("https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p16 = u16.profile
profile_p16.photo.attach(io: filee16, filename: "nes.png", content_type: "image/png")
profile_p16.save

u17 = User.create!(email: 'albert@example.com', password: 'password', first_name: 'Albert')
filee17 = URI.open("https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p17 = u17.profile
profile_p17.photo.attach(io: filee17, filename: "nes.png", content_type: "image/png")
profile_p17.save

u18 = User.create!(email: 'evelyn@example.com', password: 'password', first_name: 'Evelyn')
filee18 = URI.open("https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p18 = u18.profile
profile_p18.photo.attach(io: filee18, filename: "nes.png", content_type: "image/png")
profile_p18.save

u19 = User.create!(email: 'frederick@example.com', password: 'password', first_name: 'Frederick')
filee19 = URI.open("https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p19 = u19.profile
profile_p19.photo.attach(io: filee19, filename: "nes.png", content_type: "image/png")
profile_p19.save

u20 = User.create!(email: 'grace@example.com', password: 'password', first_name: 'Grace')
filee20 = URI.open("https://images.pexels.com/photos/1197132/pexels-photo-1197132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
profile_p20 = u20.profile
profile_p20.photo.attach(io: filee20, filename: "nes.png", content_type: "image/png")
profile_p20.save

Event.destroy_all
e1 = Event.new(
  name: "Backyard Beats Concert",
  description: "A day full of live music performances. Come along and celebrate with us!",
  address: "Chausseestraße 110, 10115 Berlin",
  date: Date.new(2024, 9, 15),
  time: Time.new(2024, 9, 15, 14, 0),
  category: "Music",
  age_group: 3,
  price: 10.00,
  user_id: u1.id
)
file1 = URI.open("https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
e1.save

e2 = Event.new(
  name: "Local Farmers Market",
  description: "Fresh produce from local farmers.",
  address: "Invalidenstraße 50, 10115 Berlin",
  date: Date.new(2024, 8, 5),
  time: Time.new(2024, 8, 5, 10, 0),
  category: "Market",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file2 = URI.open("https://images.pexels.com/photos/95425/pexels-photo-95425.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
e2.save

e3 = Event.new(
  name: "Open Air Movie Night",
  description: "Enjoy a classic movie under the stars.",
  address: "Invalidenstraße 43, 10115 Berlin",
  date: Date.new(2024, 8, 10),
  time: Time.new(2024, 8, 10, 20, 0),
  category: "Film",
  age_group: 6,
  price: 5.00,
  user_id: u1.id
)
file3 = URI.open("https://images.pexels.com/photos/7991579/pexels-photo-7991579.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
e3.save

e4 = Event.new(
  name: "Yoga in the Park",
  description: "Morning yoga session for all levels.",
  address: "Chausseestraße 85, 10115 Berlin",
  date: Date.new(2024, 8, 12),
  time: Time.new(2024, 8, 12, 8, 0),
  category: "Sports",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file4 = URI.open("https://images.pexels.com/photos/1472887/pexels-photo-1472887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e4.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")
e4.save

e5 = Event.new(
  name: "Pet Adoption Fair",
  description: "Find your new best friend.",
  address: "Torstraße 58, 10115 Berlin",
  date: Date.new(2024, 8, 15),
  time: Time.new(2024, 8, 15, 11, 0),
  category: "Pets",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file5 = URI.open("https://images.pexels.com/photos/27177011/pexels-photo-27177011/free-photo-of-mann-paar-frau-tier.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e5.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
e5.save

e6 = Event.new(
  name: "Street Food Festival",
  description: "Taste foods from around the world.",
  address: "Chausseestraße 36, 10115 Berlin",
  date: Date.new(2024, 8, 20),
  time: Time.new(2024, 8, 20, 12, 0),
  category: "Food",
  age_group: 6,
  price: 20.00,
  user_id: u1.id
)
file6 = URI.open("https://images.pexels.com/photos/104884/pexels-photo-104884.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e6.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
e6.save

e7 = Event.new(
  name: "Comedy Night",
  description: "Laugh out loud with local comedians.",
  address: "Torstraße 225, 10115 Berlin",
  date: Date.new(2024, 8, 22),
  time: Time.new(2024, 8, 22, 19, 0),
  category: "Comedy",
  age_group: 3,
  price: 15.00,
  user_id: u1.id
)
file7 = URI.open("https://images.pexels.com/photos/713149/pexels-photo-713149.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e7.photo.attach(io: file7, filename: "nes.png", content_type: "image/png")
e7.save

e8 = Event.new(
  name: "Book Club Meeting",
  description: "Discuss this month's book selection.",
  address: "Invalidenstraße 116, 10115 Berlin",
  date: Date.new(2024, 8, 25),
  time: Time.new(2024, 8, 25, 18, 0),
  category: "Literature",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file8 = URI.open("https://images.pexels.com/photos/4861330/pexels-photo-4861330.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e8.photo.attach(io: file8, filename: "nes.png", content_type: "image/png")
e8.save

e9 = Event.new(
  name: "Neighborhood BBQ",
  description: "Come and enjoy a BBQ with your neighbors.",
  address: "Chausseestraße 75, 10115 Berlin",
  date: Date.new(2024, 8, 30),
  time: Time.new(2024, 8, 30, 13, 0),
  category: "Food",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file9 = URI.open("https://images.pexels.com/photos/1482803/pexels-photo-1482803.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e9.photo.attach(io: file9, filename: "nes.png", content_type: "image/png")
e9.save

e10 = Event.new(
  name: "Gardening Workshop",
  description: "Learn how to start your own garden.",
  address: "Chausseestraße 101, 10115 Berlin",
  date: Date.new(2024, 9, 1),
  time: Time.new(2024, 9, 1, 10, 0),
  category: "Gardening",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file10 = URI.open("https://images.pexels.com/photos/169523/pexels-photo-169523.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e10.photo.attach(io: file10, filename: "nes.png", content_type: "image/png")
e10.save

e11 = Event.new(
  name: "History Walk",
  description: "A guided walk through Berlin's history.",
  address: "Invalidenstraße 3, 10115 Berlin",
  date: Date.new(2024, 9, 5),
  time: Time.new(2024, 9, 5, 15, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file11 = URI.open("https://images.pexels.com/photos/23995457/pexels-photo-23995457/free-photo-of-wahrzeichen-gebaude-gras-reise.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e11.photo.attach(io: file11, filename: "nes.png", content_type: "image/png")
e11.save

e12 = Event.new(
  name: "Senior Social Hour",
  description: "A social event for seniors in the community.",
  address: "Torstraße 126, 10115 Berlin",
  date: Date.new(2024, 9, 10),
  time: Time.new(2024, 9, 10, 10, 0),
  category: "Seniors",
  age_group: 5,
  price: 0.00,
  user_id: u1.id
)
file12 = URI.open("https://images.pexels.com/photos/3768131/pexels-photo-3768131.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e12.photo.attach(io: file12, filename: "nes.png", content_type: "image/png")
e12.save

e13 = Event.new(
  name: "Babies and Toddlers Playgroup",
  description: "A fun playgroup for babies and toddlers.",
  address: "Torstraße 129, 10115 Berlin",
  date: Date.new(2024, 9, 12),
  time: Time.new(2024, 9, 12, 10, 0),
  category: "Babies",
  age_group: 0,
  price: 0.00,
  user_id: u1.id
)
file13 = URI.open("https://images.pexels.com/photos/27175599/pexels-photo-27175599/free-photo-of-hande-frau-kind-baby.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e13.photo.attach(io: file13, filename: "nes.png", content_type: "image/png")
e13.save

e14 = Event.new(
  name: "Local Art Exhibition",
  description: "Showcasing local artists' work.",
  address: "Chausseestraße 40, 10115 Berlin",
  date: Date.new(2024, 9, 18),
  time: Time.new(2024, 9, 18, 17, 0),
  category: "Other",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file14 = URI.open("https://images.pexels.com/photos/2721507/pexels-photo-2721507.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e14.photo.attach(io: file14, filename: "nes.png", content_type: "image/png")
e14.save

e15 = Event.new(
  name: "Volunteer Info Session",
  description: "Learn about volunteer opportunities.",
  address: "Invalidenstraße 35, 10115 Berlin",
  date: Date.new(2024, 9, 20),
  time: Time.new(2024, 9, 20, 16, 0),
  category: "Help",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file15 = URI.open("https://images.pexels.com/photos/935949/pexels-photo-935949.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e15.photo.attach(io: file15, filename: "nes.png", content_type: "image/png")
e15.save

e16 = Event.new(
  name: "Meditation Session",
  description: "Relax and meditate with us.",
  address: "Invalidenstraße 50, 10115 Berlin",
  date: Date.new(2024, 9, 25),
  time: Time.new(2024, 9, 25, 18, 0),
  category: "Other",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file16 = URI.open("https://images.pexels.com/photos/3822864/pexels-photo-3822864.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e16.photo.attach(io: file16, filename: "nes.png", content_type: "image/png")
e16.save

e17 = Event.new(
  name: "Kids' Storytelling Hour",
  description: "Storytelling for children aged 3-7.",
  address: "Chausseestraße 65, 10115 Berlin",
  date: Date.new(2024, 9, 27),
  time: Time.new(2024, 9, 27, 10, 0),
  category: "Literature",
  age_group: 0,
  price: 0.00,
  user_id: u1.id
)
file17 = URI.open("https://images.pexels.com/photos/1720188/pexels-photo-1720188.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e17.photo.attach(io: file17, filename: "nes.png", content_type: "image/png")
e17.save

e18 = Event.new(
  name: "Berlin History Quiz",
  description: "Test your knowledge of Berlin's history.",
  address: "Torstraße 190, 10115 Berlin",
  date: Date.new(2024, 9, 30),
  time: Time.new(2024, 9, 30, 19, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file18 = URI.open("https://images.pexels.com/photos/7092344/pexels-photo-7092344.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e18.photo.attach(io: file18, filename: "nes.png", content_type: "image/png")
e18.save

e19 = Event.new(
  name: "Photography Workshop",
  description: "Learn the basics of photography.",
  address: "Invalidenstraße 90, 10115 Berlin",
  date: Date.new(2024, 10, 1),
  time: Time.new(2024, 10, 1, 10, 0),
  category: "Lesson",
  age_group: 6,
  price: 20.00,
  user_id: u1.id
)
file19 = URI.open("https://images.pexels.com/photos/2179205/pexels-photo-2179205.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e19.photo.attach(io: file19, filename: "nes.png", content_type: "image/png")
e19.save

e20 = Event.new(
  name: "Jazz Evening",
  description: "Enjoy a relaxing evening of jazz music.",
  address: "Torstraße 68, 10115 Berlin",
  date: Date.new(2024, 10, 5),
  time: Time.new(2024, 10, 5, 20, 0),
  category: "Music",
  age_group: 6,
  price: 15.00,
  user_id: u1.id
)
file20 = URI.open("https://images.pexels.com/photos/9009597/pexels-photo-9009597.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e20.photo.attach(io: file20, filename: "nes.png", content_type: "image/png")
e20.save

e21 = Event.new(
  name: "Craft Beer Tasting",
  description: "Taste the best craft beers in town.",
  address: "Invalidenstraße 25, 10115 Berlin",
  date: Date.new(2024, 10, 8),
  time: Time.new(2024, 10, 8, 18, 0),
  category: "Drinks",
  age_group: 6,
  price: 20.00,
  user_id: u1.id
)
file21 = URI.open("https://images.pexels.com/photos/3540/restaurant-alcohol-bar-drinks.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e21.photo.attach(io: file21, filename: "nes.png", content_type: "image/png")
e21.save

e22 = Event.new(
  name: "Community Theater",
  description: "Watch a play performed by local actors.",
  address: "Chausseestraße 66, 10115 Berlin",
  date: Date.new(2024, 10, 12),
  time: Time.new(2024, 10, 12, 19, 0),
  category: "Film",
  age_group: 6,
  price: 10.00,
  user_id: u1.id
)
file22 = URI.open("https://images.pexels.com/photos/2888802/pexels-photo-2888802.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e22.photo.attach(io: file22, filename: "nes.png", content_type: "image/png")
e22.save

e23 = Event.new(
  name: "Science Fair",
  description: "Explore science projects by local students.",
  address: "Torstraße 85, 10115 Berlin",
  date: Date.new(2024, 10, 15),
  time: Time.new(2024, 10, 15, 10, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file23 = URI.open("https://images.pexels.com/photos/356040/pexels-photo-356040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e23.photo.attach(io: file23, filename: "nes.png", content_type: "image/png")
e23.save

e24 = Event.new(
  name: "Wine and Cheese Evening",
  description: "Taste fine wines and cheeses.",
  address: "Invalidenstraße 70, 10115 Berlin",
  date: Date.new(2024, 10, 20),
  time: Time.new(2024, 10, 20, 18, 0),
  category: "Drinks",
  age_group: 6,
  price: 25.00,
  user_id: u1.id
)
file24 = URI.open("https://images.pexels.com/photos/696218/pexels-photo-696218.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e24.photo.attach(io: file24, filename: "nes.png", content_type: "image/png")
e24.save

e25 = Event.new(
  name: "Dance Workshop",
  description: "Learn new dance moves in this fun workshop.",
  address: "Chausseestraße 82, 10115 Berlin",
  date: Date.new(2024, 10, 25),
  time: Time.new(2024, 10, 25, 14, 0),
  category: "Sports",
  age_group: 6,
  price: 10.00,
  user_id: u1.id
)
file25 = URI.open("https://images.pexels.com/photos/12312/pexels-photo-12312.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e25.photo.attach(io: file25, filename: "nes.png", content_type: "image/png")
e25.save

e26 = Event.new(
  name: "Local History Talk",
  description: "A talk on the history of our neighborhood.",
  address: "Invalidenstraße 100, 10115 Berlin",
  date: Date.new(2024, 10, 28),
  time: Time.new(2024, 10, 28, 17, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file26 = URI.open("https://images.pexels.com/photos/23496662/pexels-photo-23496662/free-photo-of-laptop-buro-manner-frauen.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e26.photo.attach(io: file26, filename: "nes.png", content_type: "image/png")
e26.save

e27 = Event.new(
  name: "Puppet Show",
  description: "A fun puppet show for children.",
  address: "Chausseestraße 90, 10115 Berlin",
  date: Date.new(2024, 11, 1),
  time: Time.new(2024, 11, 1, 10, 0),
  category: "Babies",
  age_group: 0,
  price: 5.00,
  user_id: u1.id
)
file27 = URI.open("https://images.pexels.com/photos/7356520/pexels-photo-7356520.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e27.photo.attach(io: file27, filename: "nes.png", content_type: "image/png")
e27.save

e28 = Event.new(
  name: "Chess Club Meeting",
  description: "Join us for a game of chess.",
  address: "Invalidenstraße 20, 10115 Berlin",
  date: Date.new(2024, 11, 5),
  time: Time.new(2024, 11, 5, 17, 0),
  category: "Other",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file28 = URI.open("https://images.pexels.com/photos/6202987/pexels-photo-6202987.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e28.photo.attach(io: file28, filename: "nes.png", content_type: "image/png")
e28.save

e29 = Event.new(
  name: "Film Screening",
  description: "Watch an independent film.",
  address: "Torstraße 95, 10115 Berlin",
  date: Date.new(2024, 11, 8),
  time: Time.new(2024, 11, 8, 19, 0),
  category: "Film",
  age_group: 6,
  price: 5.00,
  user_id: u1.id
)
file29 = URI.open("https://images.pexels.com/photos/257385/pexels-photo-257385.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e29.photo.attach(io: file29, filename: "nes.png", content_type: "image/png")
e29.save

e30 = Event.new(
  name: "Knitting Circle",
  description: "Bring your knitting projects and enjoy a social gathering.",
  address: "Chausseestraße 78, 10115 Berlin",
  date: Date.new(2024, 11, 12),
  time: Time.new(2024, 11, 12, 14, 0),
  category: "Other",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file30 = URI.open("https://images.pexels.com/photos/4219614/pexels-photo-4219614.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e30.photo.attach(io: file30, filename: "nes.png", content_type: "image/png")
e30.save

e31 = Event.new(
  name: "Holiday Craft Fair",
  description: "Shop for handmade crafts for the holidays.",
  address: "Invalidenstraße 120, 10115 Berlin",
  date: Date.new(2024, 11, 15),
  time: Time.new(2024, 11, 15, 10, 0),
  category: "Market",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file31 = URI.open("https://images.pexels.com/photos/5598741/pexels-photo-5598741.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e31.photo.attach(io: file31, filename: "nes.png", content_type: "image/png")
e31.save

e32 = Event.new(
  name: "New Year's Eve Party",
  description: "Celebrate the New Year with your neighbors.",
  address: "Torstraße 115, 10115 Berlin",
  date: Date.new(2024, 12, 31),
  time: Time.new(2024, 12, 31, 21, 0),
  category: "Party",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file32 = URI.open("https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e32.photo.attach(io: file32, filename: "nes.png", content_type: "image/png")
e32.save

e33 = Event.new(
  name: "Cooking Class",
  description: "Learn to cook a new dish.",
  address: "Invalidenstraße 85, 10115 Berlin",
  date: Date.new(2024, 11, 18),
  time: Time.new(2024, 11, 18, 17, 0),
  category: "Lesson",
  age_group: 6,
  price: 20.00,
  user_id: u1.id
)
file33 = URI.open("https://images.pexels.com/photos/2284166/pexels-photo-2284166.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e33.photo.attach(io: file33, filename: "nes.png", content_type: "image/png")
e33.save

e34 = Event.new(
  name: "Parents' Night Out",
  description: "Parents can enjoy a night out while we watch the kids.",
  address: "Chausseestraße 71, 10115 Berlin",
  date: Date.new(2024, 12, 5),
  time: Time.new(2024, 12, 5, 18, 0),
  category: "Babies",
  age_group: 0,
  price: 10.00,
  user_id: u1.id
)
file34 = URI.open("https://images.pexels.com/photos/948199/pexels-photo-948199.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e34.photo.attach(io: file34, filename: "nes.png", content_type: "image/png")
e34.save

e35 = Event.new(
  name: "Language Exchange Meetup",
  description: "Practice languages with native speakers.",
  address: "Torstraße 102, 10115 Berlin",
  date: Date.new(2024, 12, 10),
  time: Time.new(2024, 12, 10, 19, 0),
  category: "Lesson",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file35 = URI.open("https://images.pexels.com/photos/8519252/pexels-photo-8519252.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e35.photo.attach(io: file35, filename: "nes.png", content_type: "image/png")
e35.save

e36 = Event.new(
  name: "Holiday Caroling",
  description: "Sing holiday carols around the neighborhood.",
  address: "Chausseestraße 95, 10115 Berlin",
  date: Date.new(2024, 12, 20),
  time: Time.new(2024, 12, 20, 18, 0),
  category: "Music",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file36 = URI.open("https://images.pexels.com/photos/23496894/pexels-photo-23496894/free-photo-of-geschaftsmann-mann-menschen-frau.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e36.photo.attach(io: file36, filename: "nes.png", content_type: "image/png")
e36.save

e37 = Event.new(
  name: "Winter Wonderland",
  description: "Experience a winter wonderland with your community.",
  address: "Invalidenstraße 60, 10115 Berlin",
  date: Date.new(2024, 12, 25),
  time: Time.new(2024, 12, 25, 12, 0),
  category: "Party",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file37 = URI.open("https://images.pexels.com/photos/19099388/pexels-photo-19099388/free-photo-of-kalt-schnee-stadt-beleuchtung.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e37.photo.attach(io: file37, filename: "nes.png", content_type: "image/png")
e37.save

e38 = Event.new(
  name: "Community Cleanup",
  description: "We will remove all the garbage in Torstraße. Join uns!",
  address: "Torstraße 133, 10119 Berlin",
  date: Date.new(2024, 8, 1),
  time: Time.new(2024, 8, 1, 9, 0),
  category: "Film",
  age_group: 6,
  price: 0.00,
  user_id: u1.id
)
file38 = URI.open("https://images.pexels.com/photos/9543405/pexels-photo-9543405.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
e38.photo.attach(io: file38, filename: "nes.png", content_type: "image/png")
e38.save

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u1.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u2.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u3.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u4.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u5.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u6.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u7.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u8.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u9.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u10.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u11.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u12.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u13.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u14.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u15.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u16.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u17.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u18.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u19.id,
  event_id: event_neighborhood_bbq.id
)

event_neighborhood_bbq = Event.find_by(name: "Neighborhood BBQ")
Booking.create!(
  user_id: u20.id,
  event_id: event_neighborhood_bbq.id
)
