# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database"
User.destroy_all
Genre.destroy_all
Skill.destroy_all
Share.destroy_all
Chatroom.destroy_all
Message.destroy_all


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

Genre.create!(name: "Rock", id: 1)
Genre.create!(name: "Electronic", id: 2)
Genre.create!(name: "Pop", id: 3)
Genre.create!(name: "Funk/Soul", id: 4)
Genre.create!(name: "Jazz", id: 5)
Genre.create!(name: "Folk, World, & Country", id: 6)
Genre.create!(name: "Hip-Hop", id: 7)
Genre.create!(name: "Classical", id: 8)
Genre.create!(name: "Stage & Screen", id: 9)
Genre.create!(name: "Reggae", id: 10)
Genre.create!(name: "Latin", id: 11)
Genre.create!(name: "Blues", id: 12)
Genre.create!(name: "Non-Music", id: 13)
Genre.create!(name: "Children's", id: 14)
Genre.create!(name: "Brass & Military", id: 15)

puts "...finished"

puts  "creating skills"

  music_skills = [ "Remix", "Vocals", "Instruments", "Writing", "Arrangement", "Production", "Technical", "Visuals", "DJ Mix", "Management", "Conducting & Leading", "Acting, Literary & Spoken" ]

  music_skills.each do |skill|
    skills = Skill.new(name: skill)
    skills.save!
  end

puts "...finished"

puts "creating shares"

Share.create!(link: "https://soundcloud.com/srt95",
  platform: "Soundcloud",
  user_id: kevin.id,
  genre_id: 2)

Share.create!(link: "https://soundcloud.com/nanji-lobby",
  platform: "Soundcloud",
  user_id: herve.id,
  genre_id: 2)

Share.create!(link: "https://soundcloud.com/danielbrandt",
  platform: "Soundcloud",
  user_id: daniel.id,
  genre_id: 1)

Share.create!(link: "https://soundcloud.com/epikurmusic",
  platform: "Soundcloud",
  user_id: joleana.id,
  genre_id: 2)

puts "...finished"

puts "creating chatroom(s)"

  nilchat = Chatroom.create!
  truechat = Chatroom.create!(status: true)
  falsechat = Chatroom.create!(status: false)

puts "3 chatrooms have been created nil,true,flase"
puts "...finished"

puts "creating user_chat"

  UserChat.create!(
    user_id:daniel.id,
    chatroom_id: truechat.id
  )

puts "createing messages"

  Message.create!(
    content: "Hi im Dan",
    user_id:daniel.id,
    chatroom_id: truechat.id
  )

  Message.create!(
    content: "Hi im Jo",
    user_id:joleana.id,
    chatroom_id: truechat.id
  )


puts "messages created"
puts "...finished"
