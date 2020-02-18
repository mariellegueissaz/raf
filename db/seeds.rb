puts "Delete Database..."

Friend.destroy_all
Booking.destroy_all
User.destroy_all

puts "Create User..."

arthur = User.create!(
  email: "arthurrr@gmail.com",
  password: "arthurrr"
  )

puts "Create Friends..."


Friend.create!(
  first_name: "Hugo",
  last_name: "Mori",
  friendship_category: "Humor",
  price_p_hour: "40",
  description: "Very friendly and funny",
  location: "Mulhouse",
  user_id: arthur.id
)


Friend.create!(
  first_name: "Lea",
  last_name: "Medrano",
  friendship_category: "Party",
  price_p_hour: "40",
  description: "Very friendly and funny",
  location: "Annemasse",
  user_id: arthur.id
)

Friend.create!(
  first_name: "Thibault",
  last_name: "Jaime",
  friendship_category: "Serious",
  price_p_hour: "40",
  description: "Very friendly and funny",
  location: "Aix-en-Provence",
  user_id: arthur.id
)

Friend.create!(
  first_name: "Sinan",
  last_name: "Ucak",
  friendship_category: "Smart",
  price_p_hour: "40",
  description: "Very smart and funny",
  location: "New York",
  user_id: arthur.id
)

Friend.create!(
  first_name: "Georgina",
  last_name: "Noten",
  friendship_category: "Humor",
  price_p_hour: "40",
  description: "Very sweet and funny",
  location: "Chambéry",
  user_id: arthur.id
)

puts "Done!"
