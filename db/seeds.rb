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
hugo.photo.attach(io: File.open('app/assets/images/boy1.jpeg'), filename: 'boy.jpg')

lea = Friend.create!(
  first_name: "Lea",
  last_name: "Medrano",
  friendship_category: "Party",
  price_p_hour: "40",
  description: "Very friendly and funny",
  location: "Annemasse",
  user_id: arthur.id
)
lea.photo.attach(io: File.open('app/assets/images/girl1.jpeg'), filename: 'girl.jpg')

thibault = Friend.create!(
  first_name: "Thibault",
  last_name: "Jaime",
  friendship_category: "Serious",
  price_p_hour: "40",
  description: "Very friendly and funny",
  location: "Aix-en-Provence",
  user_id: arthur.id
)
thibault.photo.attach(io: File.open('app/assets/images/boy2.jpeg'), filename: 'boy.jpg')

sinan = Friend.create!(
  first_name: "Sinan",
  last_name: "Ucak",
  friendship_category: "Smart",
  price_p_hour: "40",
  description: "Very smart and funny",
  location: "New York",
  user_id: arthur.id
)
sinan.photo.attach(io: File.open('app/assets/images/boy3.jpeg'), filename: 'boy.jpg')

georgina = Friend.create!(
  first_name: "Georgina",
  last_name: "Noten",
  friendship_category: "Humor",
  price_p_hour: "40",
  description: "Very sweet and funny",
  location: "Chambéry",
  user_id: arthur.id
)
georgina.photo.attach(io: File.open('app/assets/images/girl2.jpeg'), filename: 'girl.jpg')


nicoleta = Friend.create!(
  first_name: "Nicoleta",
  last_name: "Dudau",
  friendship_category: "Smart",
  price_p_hour: "48",
  description: "Ambitious girl who moved to Switzerland 6 years ago ",
  location: "Romania",
  user_id: arthur.id
)
nicoleta.photo.attach(io: File.open('app/assets/images/girl3.jpeg'), filename: 'girl.jpg')

emilie = Friend.create!(
  first_name: "Emilie",
  last_name: "Keller",
  friendship_category: "Serious",
  price_p_hour: "53",
  description: "Smart and serious (not too serious) girl from Geneva",
  location: "Geneva",
  user_id: arthur.id
)
emilie.photo.attach(io: File.open('app/assets/images/girl4.jpeg'), filename: 'girl.jpg')

maxime = Friend.create!(
  first_name: "Maxime",
  last_name: "Personnic",
  friendship_category: "Sporty",
  price_p_hour: "25",
  description: "Training for a half marathon",
  location: "Lyon",
  user_id: arthur.id
)
maxime.photo.attach(io: File.open('app/assets/images/boy4.jpeg'), filename: 'boy.jpg')

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
f.photo.attach(io: File.open('app/assets/images/boy5.jpeg'), filename: 'boy.jpg')

f = Friend.create!(
  first_name: Faker::Name.male_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
f.photo.attach(io: File.open('app/assets/images/boy6.jpeg'), filename: 'boy.jpg')

f = Friend.create!(
  first_name: Faker::Name.female_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
f.photo.attach(io: File.open('app/assets/images/girl5.jpeg'), filename: 'girl.jpg')

f = Friend.create!(
  first_name: Faker::Name.female_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
f.photo.attach(io: File.open('app/assets/images/girl6.jpeg'), filename: 'girl.jpg')

f = Friend.create!(
  first_name: Faker::Name.female_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
f.photo.attach(io: File.open('app/assets/images/girl7.jpeg'), filename: 'girl.jpg')

f = Friend.create!(
  first_name: Faker::Name.male_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
f.photo.attach(io: File.open('app/assets/images/boy7.jpeg'), filename: 'boy.jpg')

f = Friend.create!(
  first_name: Faker::Name.male_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
f.photo.attach(io: File.open('app/assets/images/boy8.jpeg'), filename: 'boy.jpg')

f = Friend.create!(
  first_name: Faker::Name.female_first_name,
  last_name: Faker::Name.last_name,
  friendship_category: friendship_category.sample,
  price_p_hour: rand(15..50),
  description: Faker::Hipster.sentences,
  location: Faker::Address.city,
  user_id: arthur.id
  )
f.photo.attach(io: File.open('app/assets/images/girl8.jpeg'), filename: 'girl.jpg')

puts "Done!"
