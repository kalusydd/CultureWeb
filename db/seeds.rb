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

user_louise = User.new(email: "louise@gmail.com", password: "123456", username: "Loulou44", bio: "Energetic and creative, Louise crafts events that resonate with joy. Her attention to detail and vibrant ideas transform gatherings into unforgettable celebrations.")
cat2 = URI.open('https://res.cloudinary.com/dnx58st8e/image/upload/v1701199970/development/kv38o0s6xp77zqxly9q4nu56ewp3.jpg')
user_louise.photo.attach(io: cat2, filename: 'cat2.jpg', content_type: 'image/jpg')
user_louise.save!

user_kat = User.new(email: "kat@gmail.com", password: "123456", username: "KittyO", bio: "Dynamic and passionate, Kat designs events that spark connections. Her commitment to authenticity and community ensures each gathering is a unique and memorable journey.")
cat1 = URI.open('https://res.cloudinary.com/dnx58st8e/image/upload/v1701201117/cat1_sx541t.jpg')
user_kat.photo.attach(io: cat1, filename: 'cat1.jpg', content_type: 'image/jpg')
user_kat.save!

user_pascal = User.new(email: "pascal@gmail.com", password: "123456", username: "Pascou", bio: "Visionary event architect, Pascal transforms concepts into reality. With a keen eye for elegance and innovation, he curates experiences that captivate and inspire.")
cat3 = URI.open('https://res.cloudinary.com/dnx58st8e/image/upload/v1701246465/cat3_fhpmtx.jpg')
user_pascal.photo.attach(io: cat3, filename: 'cat3.jpg', content_type: 'image/jpg')
user_pascal.save!

art_category = Category.create!(name: "art", icon: "fas fa-palette")
dance_category = Category.create!(name: "dance", icon: "fas fa-fire-flame-curved")
theatre_category = Category.create!(name: "theatre", icon: "fas fa-masks-theater")
cinema_category = Category.create!(name: "cinema", icon: "fas fa-film")
craft_category = Category.create!(name: "craft", icon: "fas fa-pen-ruler")
fooddrink_category = Category.create!(name: "food&drink", icon: "fas fa-carrot")
sport_category = Category.create!(name: "sport", icon: "fas fa-table-tennis-paddle-ball")
nature_category = Category.create!(name: "nature", icon: "fas fa-leaf")
music_category = Category.create!(name: "music", icon: "fas fa-music")
talks_category = Category.create!(name: "talks", icon: "fas fa-comments")
literature_category = Category.create!(name: "literature", icon: "fas fa-book")
drag_category = Category.create!(name: "drag", icon: "fas fa-crown")
wellness_category = Category.create!(name: "wellness", icon: "fas fa-spa")
comedy_category = Category.create!(name: "comedy", icon: "fas fa-face-grin-tears")
education_category = Category.create!(name: "education", icon: "fas fa-book-open-reader")



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
prices = [0, 5, 10, 15, 20]
capacity = [10, 20, 30, 50, 70, 100]



# events = [
#   {
#     title: "Avant-Garde Film Festival",
#     date: Faker::Date.between(from: Date.today, to: Date.today + 90),
#     time: Time.parse(time_string.sample),
#     description: "Immerse yourself in cinematic innovation at our Avant-Garde Film Festival, showcasing boundary-pushing works that challenge traditional storytelling and visual conventions.",
#     venue_name: "Berliner Cineplex",
#     venue_address: "Kurfürstendamm 123, 10711 Berlin, Germany",
#     price: prices.sample,
#     capacity: capacity.sample,
#     user: user_louise,
#     image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/cinema_kazvqq.jpg"
# },
# {
#   title: "Alternative Theater Immersion",
#   date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
#   time: Time.parse(time_string.sample),
#   description: "Explore the realms of unconventional storytelling and immersive experiences in our Alternative Theater Immersion, where traditional boundaries blur, inviting you into a world of creative expression.",
#   venue_name: "Immersive Theater Space",
#   venue_address: "Friedrichstraße 45, 10117 Berlin, Germany",
#   price: prices.sample,
#   capacity: capacity.sample,
#   user: user_pascal,
#   image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/theater_osrozu.jpg"
# },
# {
#   title: "Berlin History Lecture Series",
#   date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
#   time: Time.parse(time_string.sample),
#   description: "Delve into the rich tapestry of Berlin's past with our History Lecture Series, where engaging speakers unravel captivating stories, revealing the city's cultural evolution throughout the ages.",
#   venue_name: "City Achives Auditorium",
#   venue_address: "Prenzlauer Allee 78, 10405 Berlin, Germany",
#   price: prices.sample,
#   capacity: capacity.sample,
#   user: user_louise,
#   image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/literature_ot4jgh.jpg"
# },

# {
#   title: "Interactive Public Sculpture Tour",
#   date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
#   time: Time.parse(time_string.sample),
#   description: "Embark on a journey of discovery with our Interactive Public Sculpture Tour, a unique exploration of Berlin's streets, where art comes to life through engaging narratives and interactive installations.",
#   venue_name: "City Archives Auditorium",
#   venue_address: "Prenzlauer Allee 78, 10405 Berlin, Germany",
#   price: prices.sample,
#   capacity: capacity.sample,
#   user: user_louise,
#   image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/art_b8y5x0.jpg"
# },
# {
#   title: "Underground Poetry Salon",
#   date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
#   time: Time.parse(time_string.sample),
#   description: "Unearth the power of words in our Underground Poetry Salon, an intimate gathering where poets, spoken word artists, and enthusiasts come together to celebrate the eloquence and diversity of language.",
#   venue_name: "Poetry Lounge Berlin",
#   venue_address: "Wrangelstraße 66, 10997 Berlin, Germany",
#   price: prices.sample,
#   capacity: capacity.sample,
#   user: user_kat,
#   image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/literature_ot4jgh.jpg"
# },
# {
#   title: "DIY Artisan Market",
#   date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
#   time: Time.parse(time_string.sample),
#   description: "Celebrate craftsmanship and creativity at our DIY Artisan Market, a vibrant hub for local artists and makers to showcase and sell their unique, handcrafted treasures.",
#   venue_name: "Handcrafted Haven",
#   venue_address: "Schönhauser Allee 176, 10119 Berlin, Germany",
#   price: prices.sample,
#   capacity: capacity.sample,
#   user: user_kat,
#   image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/art_b8y5x0.jpg"
# },
# {
#   title: "Cultural Diversity Forum",
#   date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
#   time: Time.parse(time_string.sample),
#   description: "Embrace the mosaic of cultures shaping Berlin at our Cultural Diversity Forum, fostering dialogue, understanding, and appreciation for the city's diverse communities through insightful discussions and performances.",
#   venue_name: "ArtHouse Berlin",
#   venue_address: "Invalidenstraße 50, 10557 Berlin, Germany",
#   price: prices.sample,
#   capacity: capacity.sample,
#   user: user_kat,
#   image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/forum_tgypsw.jpg"
# },
# {
#   title: "Experimental Dance Performance",
#   date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
#   time: Time.parse(time_string.sample),
#   description: "Witness the boundaries of movement and expression pushed in our Experimental Dance Performance, where dancers redefine traditional forms, creating a captivating spectacle of innovation and emotion.",
#   venue_name: "Innovative Dance Studio",
#   venue_address: "Karl-Marx-Straße 33, 12043 Berlin, Germany",
#   price: prices.sample,
#   capacity: capacity.sample,
#   user: user_kat,
#   image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/dance_xyfuki.jpg"
# },
# {
#   title: "Harmony Unleashed: A Dance and Music Spectacle",
#   date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
#   time: Time.parse(time_string.sample),
#   description: 'Immerse yourself in the enchanting world of "Harmony Unleashed," where the rhythmic synergy of dance and music creates an extraordinary spectacle. Experience the fluid elegance of dance intertwined with soul-stirring melodies, promising an evening of unparalleled artistic fusion. Join us for a celebration of movement and sound, where every beat tells a story, and every step resonates with the melody of pure joy. Let "Harmony Unleashed" captivate your senses and ignite the spirit of creative collaboration.',
#   venue_name: "Innovative Dance Studio",
#   venue_address: "Karl-Marx-Straße 33, 12043 Berlin, Germany",
#   price: prices.sample,
#   capacity: capacity.sample,
#   user: user_kat,
#   image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/dance_xyfuki.jpg"
# },
# {
#   title: "Zen Oasis Retreat: Nourish Your Mind, Body, and Soul",
#   date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
#   time: Time.parse(time_string.sample),
#   description: 'Embark on a journey of self-discovery at the "Zen Oasis Retreat." Immerse yourself in rejuvenating practices that harmonize mind, body, and soul. From guided meditation to invigorating yoga sessions, indulge in a holistic experience designed to cultivate inner peace and well-being. Escape the hustle and embrace tranquility, as expert instructors lead you through a transformative day of self-care. Rediscover balance, vitality, and a renewed sense of serenity at the "Zen Oasis Retreat.',
#   venue_name: "Serenity Center",
#   venue_address: "Danziger Straße 12, 10435 Berlin, Germany",
#   price: prices.sample,
#   capacity: capacity.sample,
#   user: user_pascal,
#   image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701186309/wellness_lk23h8.jpg"
# }
# ]


# # events.each do |event|
# #   new_event = Event.create!(event)
# #   # EventCategory.create!(event: new_event, category: art_category)
# #   # EventCategory.create!(event: new_event, category: cinema_category)
# #   # event.image.attach(io: File.open(Rails.root.join("app", "assets", "images", event_data[:image_url])), filename: event_data[:image_path])
# # end

film_festival = Event.create!(title: "Avant-Garde Film Festival",
date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
time: Time.parse(time_string.sample),
description: "Immerse yourself in cinematic innovation at our Avant-Garde Film Festival, showcasing boundary-pushing works that challenge traditional storytelling and visual conventions.",
venue_name: "Berliner Cineplex",
venue_address: "Kurfürstendamm 123, 10711 Berlin, Germany",
price: prices.sample,
capacity: capacity.sample,
user: user_louise,
image_url: "https://res.cloudinary.com/dsj3cc5zj/image/upload/v1701442606/Bildschirm_foto_2023-12-01_um_15.56.32_dqyffv.png",
)
EventCategory.create!(event: film_festival, category: art_category)
EventCategory.create!(event: film_festival, category: cinema_category)
Chatroom.create!(event: film_festival)

theater_immersion = Event.create(title: "Alternative Theater Immersion",
date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
time: Time.parse(time_string.sample),
description: "Explore the realms of unconventional storytelling and immersive experiences in our Alternative Theater Immersion, where traditional boundaries blur, inviting you into a world of creative expression.",
venue_name: "Immersive Theater Space",
venue_address: "Friedrichstraße 45, 10117 Berlin, Germany",
price: prices.sample,
capacity: capacity.sample,
user: user_pascal,
image_url: "https://res.cloudinary.com/dsj3cc5zj/image/upload/v1701443252/michael-kucharski-BxGI5vaNlAk-unsplash_y8gbiu.jpg"
)
EventCategory.create!(event: theater_immersion, category: theatre_category)
EventCategory.create!(event: theater_immersion, category: literature_category)
Chatroom.create!(event: theater_immersion)

history_lecture = Event.create(title: "Berlin History Lecture Series",
date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
time: Time.parse(time_string.sample),
description: "Delve into the rich tapestry of Berlin's past with our History Lecture Series, where engaging speakers unravel captivating stories, revealing the city's cultural evolution throughout the ages.",
venue_name: "City Achives Auditorium",
venue_address: "Prenzlauer Allee 78, 10405 Berlin, Germany",
price: prices.sample,
capacity: capacity.sample,
user: user_louise,
image_url: "https://res.cloudinary.com/dsj3cc5zj/image/upload/v1701443099/Bildschirm_foto_2023-12-01_um_16.04.42_v4bsxh.png"
)
EventCategory.create!(event: history_lecture, category: talks_category)
Chatroom.create!(event: history_lecture)

sculpture_tour = Event.create(title: "Interactive Public Sculpture Tour",
date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
time: Time.parse(time_string.sample),
description: "Embark on a journey of discovery with our Interactive Public Sculpture Tour, a unique exploration of Berlin's streets, where art comes to life through engaging narratives and interactive installations.",
venue_name: "City Archives Auditorium",
venue_address: "Prenzlauer Allee 78, 10405 Berlin, Germany",
price: prices.sample,
capacity: capacity.sample,
user: user_louise,
image_url: "https://res.cloudinary.com/dsj3cc5zj/image/upload/v1701442764/Bildschirm_foto_2023-12-01_um_15.58.57_x854ys.png"
)
EventCategory.create!(event: sculpture_tour, category: art_category)
Chatroom.create!(event: sculpture_tour)

underground_poetry = Event.create(title: "Underground Poetry Salon",
date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
time: Time.parse(time_string.sample),
description: "Unearth the power of words in our Underground Poetry Salon, an intimate gathering where poets, spoken word artists, and enthusiasts come together to celebrate the eloquence and diversity of language.",
venue_name: "Poetry Lounge Berlin",
venue_address: "Wrangelstraße 66, 10997 Berlin, Germany",
price: prices.sample,
capacity: capacity.sample,
user: user_kat,
image_url: "https://res.cloudinary.com/dsj3cc5zj/image/upload/v1701443224/Bildschirm_foto_2023-11-28_um_16.29.02_ijswda.png"
)
EventCategory.create!(event: underground_poetry, category: art_category)
EventCategory.create!(event: underground_poetry, category: literature_category)
EventCategory.create!(event: underground_poetry, category: talks_category)
Chatroom.create!(event: underground_poetry)

artisan_market = Event.create(title: "DIY Artisan Market",
date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
time: Time.parse(time_string.sample),
description: "Celebrate craftsmanship and creativity at our DIY Artisan Market, a vibrant hub for local artists and makers to showcase and sell their unique, handcrafted treasures.",
venue_name: "Handcrafted Haven",
venue_address: "Schönhauser Allee 176, 10119 Berlin, Germany",
price: prices.sample,
capacity: capacity.sample,
user: user_kat,
image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/art_b8y5x0.jpg"
)
EventCategory.create!(event: artisan_market, category: art_category)
EventCategory.create!(event: artisan_market, category: craft_category)
Chatroom.create!(event: artisan_market)

cultural_forum = Event.create(title: "Cultural Diversity Forum",
date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
time: Time.parse(time_string.sample),
description: "Embrace the mosaic of cultures shaping Berlin at our Cultural Diversity Forum, fostering dialogue, understanding, and appreciation for the city's diverse communities through insightful discussions and performances.",
venue_name: "ArtHouse Berlin",
venue_address: "Invalidenstraße 50, 10557 Berlin, Germany",
price: prices.sample,
capacity: capacity.sample,
user: user_kat,
image_url: "https://res.cloudinary.com/dsj3cc5zj/image/upload/v1701443356/randall-meng-fEtrdG0PCPM-unsplash_ok671j.jpg"
)
EventCategory.create!(event: cultural_forum, category: talks_category)
EventCategory.create!(event: cultural_forum, category: dance_category)
Chatroom.create!(event: cultural_forum)

experimental_dance = Event.create(title: "Experimental Dance Performance",
date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
time: Time.parse(time_string.sample),
description: "Witness the boundaries of movement and expression pushed in our Experimental Dance Performance, where dancers redefine traditional forms, creating a captivating spectacle of innovation and emotion.",
venue_name: "Innovative Dance Studio",
venue_address: "Karl-Marx-Straße 33, 12043 Berlin, Germany",
price: prices.sample,
capacity: capacity.sample,
user: user_kat,
image_url: "https://res.cloudinary.com/dsj3cc5zj/image/upload/v1701443347/hulki-okan-tabak-spmbpgtvOiw-unsplash_kr9ufp.jpg"
)
EventCategory.create!(event: experimental_dance, category: dance_category)
EventCategory.create!(event: experimental_dance, category: music_category)
EventCategory.create!(event: experimental_dance, category: art_category)
Chatroom.create!(event: experimental_dance)

harmony_unleashed = Event.create(title: "Harmony Unleashed: A Dance and Music Spectacle",
date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
time: Time.parse(time_string.sample),
description: 'Immerse yourself in the enchanting world of "Harmony Unleashed," where the rhythmic synergy of dance and music creates an extraordinary spectacle. Experience the fluid elegance of dance intertwined with soul-stirring melodies, promising an evening of unparalleled artistic fusion. Join us for a celebration of movement and sound, where every beat tells a story, and every step resonates with the melody of pure joy. Let "Harmony Unleashed" captivate your senses and ignite the spirit of creative collaboration.',
venue_name: "Innovative Dance Studio",
venue_address: "Karl-Marx-Straße 33, 12043 Berlin, Germany",
price: prices.sample,
capacity: capacity.sample,
user: user_kat,
image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701182949/dance_xyfuki.jpg"
)
EventCategory.create!(event: harmony_unleashed, category: dance_category)
EventCategory.create!(event: harmony_unleashed, category: music_category)
Chatroom.create!(event: harmony_unleashed)

oasis_retreat = Event.create(title: "Zen Oasis Retreat: Nourish Your Mind, Body, and Soul",
date: Faker::Date.between(from: Date.today, to: 30.days.from_now),
time: Time.parse(time_string.sample),
description: 'Embark on a journey of self-discovery at the "Zen Oasis Retreat." Immerse yourself in rejuvenating practices that harmonize mind, body, and soul. From guided meditation to invigorating yoga sessions, indulge in a holistic experience designed to cultivate inner peace and well-being. Escape the hustle and embrace tranquility, as expert instructors lead you through a transformative day of self-care. Rediscover balance, vitality, and a renewed sense of serenity at the "Zen Oasis Retreat.',
venue_name: "Serenity Center",
venue_address: "Danziger Straße 12, 10435 Berlin, Germany",
price: prices.sample,
capacity: capacity.sample,
user: user_pascal,
image_url: "https://res.cloudinary.com/dnx58st8e/image/upload/v1701186309/wellness_lk23h8.jpg"
)
EventCategory.create!(event: oasis_retreat, category: wellness_category)
Chatroom.create!(event: oasis_retreat )



puts 'Creating seeds...'
puts 'Finished!'
