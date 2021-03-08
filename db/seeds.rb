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
Message.destroy_all


puts "creating 4 main users..."


  kevin = User.create!(email: "kevin@agoh.com",
  first_name: "Kevin",
  last_name: "Agoh",
  username: Faker::Internet.username(specifier: 'Keum'),
  bio: "I am a passionate vocalist and singer and my favourite music genre is soul funk not to be confused with funk soul. All true music lovers know the difference.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/dgb/image/upload/v1614955857/Photo_de_profil_Kevin_vrswm0.jpg')
  kevin.photo.attach(io: file, filename: 'Kevin.png', content_type: 'image/png')
  kevin.save

  herve = User.create!(email: "herve@test.com",
  first_name: "Hervé",
  last_name: "Bonnaffoux",
  username: Faker::Internet.username(specifier: 'NRV'),
  bio: "I am a machine without a soul. I play brutalist techno. Feed me with records or DIE.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/dgb/image/upload/v1614944904/5q5y06rpxiaioujpl76o4upnpzqg.jpg')
  herve.photo.attach(io: file, filename: 'Kevin.png', content_type: 'image/png')
  herve.save

  daniel = User.create!(email: "daniel@brandt.com",
  first_name: "Dan",
  last_name: "Brandt",
  username: Faker::Internet.username(specifier: 'DGB'),
  bio: "I am a drum player and my favourite genre is Jazz. I also like to recite my own poetry while gently stroking my drumkit.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/dgb/image/upload/v1614945046/5nzo16ih5u3mo2cswz21skwrnw39.png')
  daniel.photo.attach(io: file, filename: 'Kevin.png', content_type: 'image/png')
  daniel.save

  joleana = User.create!(email:"joleana@shurley.com",
  first_name: "Joleana",
  last_name: "Shurley",
  username: Faker::Internet.username(specifier: 'Jo'),
  bio: "I am a lead gituarist. Joan jet is the greatest. ROCK ON FOR EVER. I also manage my rock children and help them grow.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/dgb/image/upload/v1614945062/arnzg41n7x1b0khk20x6p4rrpigi.png')
  joleana.photo.attach(io: file, filename: 'Kevin.png', content_type: 'image/png')
  joleana.save

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

puts "creating genres for users"

kevin.genres << [funk_soul, pop, blues]
herve.genres << [electronic, non_music, stage]
daniel.genres << [jazz, classical, folk]
joleana.genres << [rock, childrens, latin]

puts "...finished"

puts "creating skills for users"

kevin.skills << [vocals, conducting, writing]
herve.skills << [dj_mix, remix, technical]
daniel.skills << [instruments, arrangement, production]
joleana.skills << [management, acting, visuals]

puts "...finished"

puts "...creating more users"

20.times do
 user = User.create!(email: Faker::Internet.email,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.username,
  bio: "I am a #{Faker::Music.instrument} player and my favourite music genre is #{Faker::Music.genre}",
  password: "123456")
  UserSkill.create!(user_id: user.id,
  skill_id: Skill.all.sample.id)
  UserGenre.create!(user_id: user.id,
  genre_id: Genre.all.sample.id)
end


puts "...finished"

