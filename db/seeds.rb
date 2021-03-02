# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating 4 users..."


  User.create!(email: Faker::Internet.email(name: 'Kevin Agoh', separators: '_'), 
  first_name: "Kevin",
  last_name: "Agoh",
  username: Faker::Internet.username(specifier: 'Keum'),
  bio: "I am a #{Faker::Music.instrument} player and my favourite music genre is #{Faker::Music.genre}", 
  password: "123456")


  User.create!(email: Faker::Internet.email(name: 'Herve Bonnaff', separators: '_'),
  first_name: "Hervé",
  last_name: "Bonnaff",
  username: Faker::Internet.username(specifier: 'NRV'),
  bio: "I am a #{Faker::Music.instrument} player and my favourite music genre is #{Faker::Music.genre}",
  password: "123456")

  User.create!(email: Faker::Internet.email(name: 'Daniel Brandt', separators: '_'),
  first_name: "Dan",
  last_name: "Gordon",
  username: Faker::Internet.username(specifier: 'DGB'),
  bio: "I am a #{Faker::Music.instrument} player and my favourite music genre is #{Faker::Music.genre}",
  password: "123456")

  User.create!(email: Faker::Internet.email(name: 'Joleana Shurley', separators: '_'),
  first_name: "Joleana",
  last_name: "Shurley",
  username: Faker::Internet.username(specifier: 'Jo'),
  bio: "I am a #{Faker::Music.instrument} player and my favourite music genre is #{Faker::Music.genre}",
  password: "123456")

puts "...finished"

puts "creating 15 music genres..."

15.times do
  music_genres = [ "Rock", "Electronic", "Pop", "Funk/Soul", "Jazz", "Folk, World, & Country", "Hip-Hop", "Classical", "Stage & Screen", "Reggae", "Latin", "Blues", "Non-Music", "Children's", "Brass & Military" ]
  genres = Genre.new(name: music_genres.sample)
  genres.save!
end

puts "...finished"

puts  "creating skills"

12.times do
  music_skills = [ "Remix", "Vocals", "Instruments", "Writing", "Arrangement", "Production", "Technical", "Visuals", "DJ Mix", "Management", "Conducting & Leading", "Acting, Literary & Spoken" ]
  skills = Skill.new(name: music_skills.sample)
  skills.save!
end

puts "...finished"