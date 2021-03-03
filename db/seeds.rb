# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database"
UserGenre.destroy_all
UserSkill.destroy_all
Share.destroy_all
Genre.destroy_all
User.destroy_all
Skill.destroy_all
Chatroom.destroy_all


puts "creating 4 users..."


  kevin = User.create!(email: "kevin@agoh.com",
  first_name: "Kevin",
  last_name: "Agoh",
  username: Faker::Internet.username(specifier: 'Keum'),
  bio: "I am a #{Faker::Music.instrument} player and my favourite music genre is #{Faker::Music.genre}",
  password: "123456")


  herve = User.create!(email: "herve@test.com",
  first_name: "Hervé",
  last_name: "Bonnaffoux",
  username: Faker::Internet.username(specifier: 'NRV'),
  bio: "I am a #{Faker::Music.instrument} player and my favourite music genre is #{Faker::Music.genre}",
  password: "123456")

  daniel = User.create!(email: "daniel@brandt.com",
  first_name: "Dan",
  last_name: "Brandt",
  username: Faker::Internet.username(specifier: 'DGB'),
  bio: "I am a #{Faker::Music.instrument} player and my favourite music genre is #{Faker::Music.genre}",
  password: "123456")

  joleana = User.create!(email:"joleana@shurley.com",
  first_name: "Joleana",
  last_name: "Shurley",
  username: Faker::Internet.username(specifier: 'Jo'),
  bio: "I am a #{Faker::Music.instrument} player and my favourite music genre is #{Faker::Music.genre}",
  password: "123456")

puts "...finished"

puts "creating music genres..."

rock = Genre.create!(name: "Rock")
electronic = Genre.create!(name: "Electronic")
pop = Genre.create!(name: "Pop")
funk_soul = Genre.create!(name: "Funk/Soul")
jazz = Genre.create!(name: "Jazz")
folk = Genre.create!(name: "Folk, World, & Country")
hip_hop = Genre.create!(name: "Hip-Hop")
classical = Genre.create!(name: "Classical")
stage = Genre.create!(name: "Stage & Screen")
reggae = Genre.create!(name: "Reggae")
latin = Genre.create!(name: "Latin")
blues = Genre.create!(name: "Blues")
non_music = Genre.create!(name: "Non-Music")
childrens = Genre.create!(name: "Children's")
military = Genre.create!(name: "Brass & Military")

puts "...finished"

puts  "creating skills"

remix = Skill.create!(name: "Remix")
vocals = Skill.create!(name: "Vocals")
instruments = Skill.create!(name: "Instruments")
writing = Skill.create!(name: "Writing")
arrangement = Skill.create!(name: "Arrangement")
production = Skill.create!(name: "Production")
technical = Skill.create!(name: "Technical")
visuals = Skill.create!(name: "Visuals")
dj_mix = Skill.create!(name: "DJ Mix")
management = Skill.create!(name: "Management")
conducting = Skill.create!(name: "Conducting & Leading")
acting = Skill.create!(name: "Acting, Literary & Spoken")


puts "...finished"

puts "creating shares"

Share.create!(link: "https://soundcloud.com/srt95",
  platform: "Soundcloud",
  user_id: kevin.id,
  genre_id: classical.id)

Share.create!(link: "https://soundcloud.com/nanji-lobby",
  platform: "Soundcloud",
  user_id: herve.id,
  genre_id: electronic.id)

Share.create!(link: "https://soundcloud.com/danielbrandt",
  platform: "Soundcloud",
  user_id: daniel.id,
  genre_id: jazz.id)

Share.create!(link: "https://soundcloud.com/epikurmusic",
  platform: "Soundcloud",
  user_id: joleana.id,
  genre_id: rock.id)

puts "...finished"

puts "creating chatroom(s)"

  Chatroom.create!
  Chatroom.create!(status: true)
  Chatroom.create!(status: false)

puts "3 chatrooms have been created nil,true,flase"

puts "creating genres for users"

UserGenre.create!(user_id: kevin.id,
  genre_id: funk_soul.id)

UserGenre.create!(user_id: herve.id,
  genre_id: electronic.id)

UserGenre.create!(user_id: daniel.id,
  genre_id: jazz.id)

UserGenre.create!(user_id: joleana.id,
  genre_id: rock.id)

puts "...finished"

puts "creating skills for users"

UserSkill.create!(user_id: kevin.id,
  skill_id: vocals.id)

UserSkill.create!(user_id: herve.id,
  skill_id: dj_mix.id)

UserSkill.create!(user_id: daniel.id,
  skill_id: instruments.id)

UserSkill.create!(user_id: joleana.id,
  skill_id: management.id)


puts "...finished"



