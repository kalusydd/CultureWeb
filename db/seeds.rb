# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
User.destroy_all
Event.destroy_all

user1 = User.new(email: "louise@gmail.com", password: "123456", username: "Louise" )
user1.save!
user2 = User.new(email: "kat@gmail.com", password: "123456", username: "Kat" )
user2.save!

# # titles = [
# #   "Alternative Theater Immersion",
# #   "Street Art Symposium",
# #   "Berlin History Lecture Series",
# #   "Interactive Public Sculpture Tour",
# #   "Underground Poetry Salon",
# #   "DIY Artisan Market",
# #   "Cultural Diversity Forum",
# #   "Experimental Dance Performance",
# #   "Hidden Book Club: Literary Explorations"
# # ]

time_string = ["12:00", "14:00", "16:00", "18:30", "19:00", "20:00", "20:30", "21:00"]
prices = ["free", "5 €", "10 €", "15 €", "20 €"]
capacity = ["less than 20", "20-50", "50-100", "100-150", "150-200", "more than 200"]

# pic_art = URI.open('app/assets/images/art.jpg')
# pic_literature = URI.open('app/assets/images/literature.jpg')
# pic_cinema = URI.open('app/assets/images/cinema.jpg')
# pic_dance = URI.open('app/assets/images/dance.jpg')
# pic_forum = URI.open('app/assets/images/forum.jpg')
# pic_theater = URI.open('app/assets/images/theater.jpg')

events = [
  {
    title: "Avant-Garde Film Festival",
    date: Faker::Date.between(from: 1.days.from_now, to: Date.today),
    time: Time.zone.parse(time_string.sample),
    description: "Immerse yourself in cinematic innovation at our Avant-Garde Film Festival, showcasing boundary-pushing works that challenge traditional storytelling and visual conventions.",
    venue_name: "Berliner Cineplex",
    venue_address: "address",
    price: prices.sample,
    capacity: capacity.sample,
    category: "Cinema",
    user: user1,
    image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/cinema_kazvqq.jpg"
},
{
  title: "Alternative Theater Immersion",
  date: Faker::Date.between(from: 1.days.from_now, to: Date.today),
  time: Time.zone.parse(time_string.sample),
  description: "Explore the realms of unconventional storytelling and immersive experiences in our Alternative Theater Immersion, where traditional boundaries blur, inviting you into a world of creative expression.",
  venue_name: "Immersive Theater Space",
  venue_address: "address",
  price: prices.sample,
  capacity: capacity.sample,
  category: "Theatre",
  user: user1,
  image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/theater_osrozu.jpg"
},
{
  title: "Berlin History Lecture Series",
  date: Faker::Date.between(from: 1.days.from_now, to: Date.today),
  time: Time.zone.parse(time_string.sample),
  description: "Delve into the rich tapestry of Berlin's past with our History Lecture Series, where engaging speakers unravel captivating stories, revealing the city's cultural evolution throughout the ages.",
  venue_name: "City Achives Auditorium",
  venue_address: "address",
  price: prices.sample,
  capacity: capacity.sample,
  category: "Literature",
  user: user1,
  image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/literature_ot4jgh.jpg"
},

{
  title: "Interactive Public Sculpture Tour",
  date: Faker::Date.between(from: 1.days.from_now, to: Date.today),
  time: Time.zone.parse(time_string.sample),
  description: "Embark on a journey of discovery with our Interactive Public Sculpture Tour, a unique exploration of Berlin's streets, where art comes to life through engaging narratives and interactive installations.",
  venue_name: "City Archives Auditorium",
  venue_address: "address",
  price: prices.sample,
  capacity: capacity.sample,
  category: "Art",
  user: user1,
  image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/art_b8y5x0.jpg"
},
{
  title: "Underground Poetry Salon",
  date: Faker::Date.between(from: 1.days.from_now, to: Date.today),
  time: Time.zone.parse(time_string.sample),
  description: "Unearth the power of words in our Underground Poetry Salon, an intimate gathering where poets, spoken word artists, and enthusiasts come together to celebrate the eloquence and diversity of language.",
  venue_name: "Poetry Lounge Berlin",
  venue_address: "address",
  price: prices.sample,
  capacity: capacity.sample,
  category: "Literature",
  user: user2,
  image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/literature_ot4jgh.jpg"
},
{
  title: "DIY Artisan Market",
  date: Faker::Date.between(from: 1.days.from_now, to: Date.today),
  time: Time.zone.parse(time_string.sample),
  description: "Celebrate craftsmanship and creativity at our DIY Artisan Market, a vibrant hub for local artists and makers to showcase and sell their unique, handcrafted treasures.",
  venue_name: "Handcrafted Haven",
  venue_address: "address",
  price: prices.sample,
  capacity: capacity.sample,
  category: "Craft",
  user: user2,
  image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/art_b8y5x0.jpg"
},
{
  title: "Cultural Diversity Forum",
  date: Faker::Date.between(from: 1.days.from_now, to: Date.today),
  time: Time.zone.parse(time_string.sample),
  description: "Embrace the mosaic of cultures shaping Berlin at our Cultural Diversity Forum, fostering dialogue, understanding, and appreciation for the city's diverse communities through insightful discussions and performances.",
  venue_name: "ArtHouse Berlin",
  venue_address: "address",
  price: prices.sample,
  capacity: capacity.sample,
  category: "Forum",
  user: user2,
  image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/forum_tgypsw.jpg"
},
{
  title: "Experimental Dance Performance",
  date: Faker::Date.between(from: 1.days.from_now, to: Date.today),
  time: Time.zone.parse(time_string.sample),
  description: "Witness the boundaries of movement and expression pushed in our Experimental Dance Performance, where dancers redefine traditional forms, creating a captivating spectacle of innovation and emotion.",
  venue_name: "Innovative Dance Studio",
  venue_address: "address",
  price: prices.sample,
  capacity: capacity.sample,
  category: "Dance",
  user: user2,
  image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/dance_xyfuki.jpg"
},
{
  title: "Hidden Book Club: Literary Explorations",
  date: Faker::Date.between(from: 1.days.from_now, to: Date.today),
  time: Time.zone.parse(time_string.sample),
  description: "Join a community of literary explorers in our Hidden Book Club, where hidden gems and literary treasures are uncovered, discussed, and celebrated in an atmosphere of intellectual curiosity and camaraderie.",
  venue_name: "Poetry Lounge Berlin",
  venue_address: "address",
  price: prices.sample,
  capacity: capacity.sample,
  category: "Literature",
  user: user2,
  image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/literature_ot4jgh.jpg"
}
]

events.each do |event|
  Event.create!(event)
  # event.image.attach(io: File.open(Rails.root.join("app", "assets", "images", event_data[:image_url])), filename: event_data[:image_path])
end

puts 'Creating seeds...'
puts 'Finished!'
