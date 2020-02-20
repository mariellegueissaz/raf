require 'open-uri'
require 'faker'

puts "Delete Database..."

Booking.destroy_all
Friend.destroy_all
User.destroy_all
friendship_category = ["Humor", "Party", "Serious", "Smart", "Sad", "Sporty"]

puts "Create User..."

arthur = User.create!(
  email: "arthurrr@gmail.com",
  password: "arthurrr"
  )

puts "Create Friends..."


hugo = Friend.create!(
  first_name: "Hugo",
  last_name: "Mori",
  friendship_category: "Humor",
  price_p_hour: "40",
  description: "Very friendly and funny",
  location: "Mulhouse",
  user_id: arthur.id
)
file = URI.open('https://source.unsplash.com/collection/4488972/214x214')
hugo.photo.attach(io: file, filename: 'boy1.jpeg', content_type: 'image/jpeg')

lea = Friend.create!(
  first_name: "Lea",
  last_name: "Medrano",
  friendship_category: "Party",
  price_p_hour: "40",
  description: "Very friendly and funny",
  location: "Annemasse",
  user_id: arthur.id
)
file = URI.open('https://source.unsplash.com/collection/4343709/214x214')
lea.photo.attach(io: file, filename: 'girl1.jpeg', content_type: 'image/jpeg')

thibault = Friend.create!(
  first_name: "Thibault",
  last_name: "Jaime",
  friendship_category: "Serious",
  price_p_hour: "40",
  description: "Very friendly and funny",
  location: "Aix-en-Provence",
  user_id: arthur.id
)
file = URI.open('https://source.unsplash.com/collection/3781084/214x214')
thibault.photo.attach(io: file, filename: 'boy2.jpeg', content_type: 'image/jpeg')

sinan = Friend.create!(
  first_name: "Sinan",
  last_name: "Ucak",
  friendship_category: "Smart",
  price_p_hour: "40",
  description: "Very smart and funny",
  location: "New York",
  user_id: arthur.id
)
file = URI.open("https://source.unsplash.com/collection/3688872/214x214")
sinan.photo.attach(io: file, filename: 'boy1.jpeg', content_type: 'image/jpeg')

georgina = Friend.create!(
  first_name: "Georgina",
  last_name: "Noten",
  friendship_category: "Humor",
  price_p_hour: "40",
  description: "Very sweet and funny",
  location: "Chambéry",
  user_id: arthur.id
)
file = URI.open('https://source.unsplash.com/collection/1107894/214x214')
georgina.photo.attach(io: file, filename: 'girl2.jpeg', content_type: 'image/jpeg')


nicoleta = Friend.create!(
  first_name: "Nicoleta",
  last_name: "Dudau",
  friendship_category: "Smart",
  price_p_hour: "48",
  description: "Ambitious girl who moved to Switzerland 6 years ago ",
  location: "Romania",
  user_id: arthur.id
)
file = URI.open('https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
nicoleta.photo.attach(io: file, filename: 'girl3.jpeg', content_type: 'image/jpeg')

emilie = Friend.create!(
  first_name: "Emilie",
  last_name: "Keller",
  friendship_category: "Serious",
  price_p_hour: "53",
  description: "Smart and serious (not too serious) girl from Geneva",
  location: "Geneva",
  user_id: arthur.id
)
file = URI.open('https://source.unsplash.com/collection/9559153/214x214')
emilie.photo.attach(io: file, filename: 'girl4.jpeg', content_type: 'image/jpeg')

maxime = Friend.create!(
  first_name: "maxime",
  last_name: "Personnic",
  friendship_category: "Sporty",
  price_p_hour: "25",
  description: "Training for a half marathon",
  location: "Lyon",
  user_id: arthur.id
)
file = URI.open('https://source.unsplash.com/collection/3688872/214x214')
maxime.photo.attach(io: file, filename: 'boy4.jpeg', content_type: 'image/jpeg')

puts "Creating the faker ones..."

f = Friend.create!(
  first_name: Faker::Name.male_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
file = URI.open("https://source.unsplash.com/collection/4488972/214x214")
f.photo.attach(io: file, filename: 'image.jpeg', content_type: 'image/jpeg')

f = Friend.create!(
  first_name: Faker::Name.male_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
file = URI.open("https://source.unsplash.com/collection/3508519/214x214")
f.photo.attach(io: file, filename: 'image.jpeg', content_type: 'image/jpeg')

f = Friend.create!(
  first_name: Faker::Name.female_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
file = URI.open("https://source.unsplash.com/collection/2721405/214x214")
f.photo.attach(io: file, filename: 'image.jpeg', content_type: 'image/jpeg')

f = Friend.create!(
  first_name: Faker::Name.female_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
file = URI.open("https://source.unsplash.com/collection/2448884/214x214")
f.photo.attach(io: file, filename: 'image.jpeg', content_type: 'image/jpeg')

f = Friend.create!(
  first_name: Faker::Name.female_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
file = URI.open("https://source.unsplash.com/collection/4488972/214x214")
f.photo.attach(io: file, filename: 'image.jpeg', content_type: 'image/jpeg')

f = Friend.create!(
  first_name: Faker::Name.male_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
file = URI.open("https://source.unsplash.com/collection/3409546/214x214")
f.photo.attach(io: file, filename: 'image.jpeg', content_type: 'image/jpeg')

f = Friend.create!(
  first_name: Faker::Name.male_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
file = URI.open('https://source.unsplash.com/collection/3781084/214x214')
f.photo.attach(io: file, filename: 'image.jpeg', content_type: 'image/jpeg')

f = Friend.create!(
  first_name: Faker::Name.female_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
file = URI.open("https://source.unsplash.com/collection/5018685/214x214")
f.photo.attach(io: file, filename: 'image.jpeg', content_type: 'image/jpeg')

puts "Done!"
