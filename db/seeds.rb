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


puts "creating 25 main users..."


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

  jane = User.create!(email: "jane@smith.com",
  first_name: "Jane",
  last_name: "Smith",
  username: Faker::Internet.username(specifier: 'JaneS'),
  bio: "I am an artist who brings a much needed feminine gravitas to the often male-dominated urban Latino genre.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615213254/jane-smith_oynjhn.webp')
  jane.photo.attach(io: file, filename: 'Jane.png', content_type: 'image/png')
  jane.save

  hive = User.create!(email: "hive@productions.com",
  first_name: "Hive",
  last_name: "Prodigee",
  username: Faker::Internet.username(specifier: 'DJ PRODIGEE'),
  bio: "For veteran musician DJ Prodigee, playing music for others has been his bread and butter for as long as he can remember.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615213878/DJ-Prodigee_xtfnqf.webp')
  hive.photo.attach(io: file, filename: 'Hive.png', content_type: 'image/png')
  hive.save

  grubber = User.create!(email: "grubber@theband.com",
  first_name: "Grubber",
  last_name: "Neppa",
  username: Faker::Internet.username(specifier: 'GrubberNeppa'),
  bio: "If you ever thought that the days are gone where rock groups were made in the dank, sweaty garages of some unknown suburban town–think again.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615214170/Grubber_vmf3yx.webp')
  grubber.photo.attach(io: file, filename: 'Grubber.png', content_type: 'image/png')
  grubber.save

  chae = User.create!(email:"chae@sole.com",
  first_name: "Chae",
  last_name: "Sole",
  username: Faker::Internet.username(specifier: 'Chae'),
  bio: "Often soft-spoken and invariably sullen in my vocal style, I am a Latin R&B artist who delves into deeper themes of romance, confusion, and anger.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/dgb/image/upload/v1614945062/arnzg41n7x1b0khk20x6p4rrpigi.png')
  chae.photo.attach(io: file, filename: 'Chae.png', content_type: 'image/png')
  chae.save

  mark = User.create!(email: "mark@evans.com",
  first_name: "Mark",
  last_name: "Evans",
  username: Faker::Internet.username(specifier: 'MarkE'),
  bio: "With a heritage deeply rooted in folk and rock, I have been putting out uplifting folk hits that sink in like a home cooked meal.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615214964/mark-evans_rxuhxy.jpg')
  mark.photo.attach(io: file, filename: 'Mark.png', content_type: 'image/png')
  mark.save

  jesse = User.create!(email: "jesse@slack.com",
  first_name: "Jesse",
  last_name: "Slack",
  username: Faker::Internet.username(specifier: 'Slack'),
  bio: "My brand of country music echoes carefree, summer-time vibes that make you want to turn it up to eleven, roll down the windows and sing your damn heart out.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615215180/jesse-slack_wzpza3.jpg')
  jesse.photo.attach(io: file, filename: 'Jesse.png', content_type: 'image/png')
  jesse.save

  eileen = User.create!(email: "eileen@figueroa.com",
  first_name: "Eileen",
  last_name: "figueroa",
  username: Faker::Internet.username(specifier: 'EilFig'),
  bio: "I am a story teller and I welcome you to join me on this visual journey.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615215470/eileen-figueroa_oxwsbx.webp')
  eileen.photo.attach(io: file, filename: 'Eileen.png', content_type: 'image/png')
  eileen.save

  carol = User.create!(email:"carol@rama.com",
  first_name: "Carol",
  last_name: "Rama",
  username: Faker::Internet.username(specifier: 'CarolRama'),
  bio: "I am a self-taught artist whose unconventional visual art encompasses an erotic, and often sexually aggressive universe populated by characters who present themes of sexual identity with specific references to female sensuality.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615215750/Carol-Rama_pwobnb.jpg')
  carol.photo.attach(io: file, filename: 'Carol.png', content_type: 'image/png')
  carol.save

  mary = User.create!(email: "mary@pearson.com",
  first_name: "Mary",
  last_name: "Pearson",
  username: Faker::Internet.username(specifier: 'MaryPear'),
  bio: "I have always been fascinated by images and how the world is represented through the eyes of others.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615216096/mary-p_fvgcyo.jpg')
  mary.photo.attach(io: file, filename: 'Mary.png', content_type: 'image/png')
  mary.save

  sade = User.create!(email: "sade@adu.com",
  first_name: "Sade",
  last_name: "Adu",
  username: Faker::Internet.username(specifier: 'Sade'),
  bio: "I am a British singer, songwriter, and actress dedicated to the contemporary music scene.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615216372/sade_cwmfdp.png')
  sade.photo.attach(io: file, filename: 'Sade.png', content_type: 'image/png')
  sade.save

  janelle = User.create!(email: "janelle@monae.com",
  first_name: "Janelle",
  last_name: "Monáe",
  username: Faker::Internet.username(specifier: 'Janelle'),
  bio: "I am an American singer-songwriter, rapper, actress, and record producer. My artwork culminates in political activism and social expression.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615216650/janelle_xjiizc.jpg')
  janelle.photo.attach(io: file, filename: 'Janelle.png', content_type: 'image/png')
  janelle.save

  ada = User.create!(email:"ada@ehi.com",
  first_name: "Ada",
  last_name: "Ehi",
  username: Faker::Internet.username(specifier: 'Ada'),
  bio: "I am a gospel singer, songwriter, recording and performing artist. I have performed at church choir events around the world.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615216761/ada-ehi_g46yes.jpg')
  ada.photo.attach(io: file, filename: 'Ada.png', content_type: 'image/png')
  ada.save

  celts = User.create!(email: "cali@celts.com",
  first_name: "California",
  last_name: "Celts",
  username: Faker::Internet.username(specifier: 'CaliCelts'),
  bio: "Native to California, streaming the music of the Old World, we feature the jigs, celts, and relics of the classic folk infused with the rythym of raggae and ska.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615217235/cali-celts_o3ttgt.jpg')
  celts.photo.attach(io: file, filename: 'Cali-celts.png', content_type: 'image/png')
  celts.save

  david = User.create!(email: "david@shurley.com",
  first_name: "David",
  last_name: "Shurley",
  username: Faker::Internet.username(specifier: 'Dash'),
  bio: "I am a producer, instrumentalist and singer, experienced in band management, touring and performance across various genres.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615217520/david_hfbxsj.jpg')
  david.photo.attach(io: file, filename: 'David.png', content_type: 'image/png')
  david.save

  bob = User.create!(email: "bob@gene.com",
  first_name: "Bobby",
  last_name: "Gene",
  username: Faker::Internet.username(specifier: 'Bobby-gene'),
  bio: "I've been in the music industry for over 60 years. My record company is looking to sign new talent.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615217879/bobby-gene_ggdbq1.jpg')
  bob.photo.attach(io: file, filename: 'Bob.png', content_type: 'image/png')
  bob.save

  kittie = User.create!(email: "miss@kittie.com",
  first_name: "Kitten",
  last_name: "Records",
  username: Faker::Internet.username(specifier: 'miss-kittie'),
  bio: "Miss Kittie often played piano for fun at her grandparents', and reproduced melodies from the radio. Now she backs the deck and finesses the electro beat.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615218311/Miss_Kittin_on_the_decks_euuuqm.jpg')
  kittie.photo.attach(io: file, filename: 'Kittie.png', content_type: 'image/png')
  kittie.save

  vex = User.create!(email:"vex@mix.com",
  first_name: "Vex",
  last_name: "Mix",
  username: Faker::Internet.username(specifier: 'Vex'),
  bio: "I am a reputable beat architect within Tampa’s burgeoning hip-hop scene. With a diverse array of sounds that echo inspirations of pop, dance, metal and electronica, my music is equal parts energetic and raw.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615218569/Vex_xylm49.webp')
  vex.photo.attach(io: file, filename: 'Vex.png', content_type: 'image/png')
  vex.save

  dane = User.create!(email: "dane@lawrence.com",
  first_name: "Dane",
  last_name: "Lawrence",
  username: Faker::Internet.username(specifier: 'Dane'),
  bio: "I am inspired by a wide range of music, everything from the rap stylings of Jay-Z, The Fugees and Notorious B.I.G., to Bob Marley, Amy Winehouse and Motown sensation Marvin Gaye.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615219365/dane_ma0pw0.jpg')
  dane.photo.attach(io: file, filename: 'Dane.png', content_type: 'image/png')
  dane.save

  dionne = User.create!(email: "dionne@serge.com",
  first_name: "Dionne",
  last_name: "Serge",
  username: Faker::Internet.username(specifier: 'Dionne'),
  bio: "I selflessly serve the music… I am a bridge – the glue between the drummer and the rest of the band.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615219200/dionne_x8e19b.jpg')
  dionne.photo.attach(io: file, filename: 'Dionne.png', content_type: 'image/png')
  dionne.save

  qt = User.create!(email: "q@t.com",
  first_name: "Virginia",
  last_name: "QT",
  username: Faker::Internet.username(specifier: 'QT'),
  bio: "I bring together intense and fiery themes of strength, passion, lust, remorse – and sculpt them into pieces that are guided by the foundations laid down by the fathers of old-school and contemporary R&B.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615219019/qt_duydlo.jpg')
  qt.photo.attach(io: file, filename: 'Qt.png', content_type: 'image/png')
  qt.save

  guy = User.create!(email:"guy@ro.com",
  first_name: "Guy",
  last_name: "Ro",
  username: Faker::Internet.username(specifier: 'GuyRo'),
  bio: "Irish-born, Spanish-based electronica DJ and producer, GuyRo got swept up by the electronica steam train back during it’s early beginnings.",
  password: "123456")
  file = URI.open('https://res.cloudinary.com/deblg8cgb/image/upload/v1615218850/guy-ro_zacxvy.jpg')
  guy.photo.attach(io: file, filename: 'Guy.png', content_type: 'image/png')
  guy.save


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

Share.create!(link: "https://soundcloud.com/jane-smith",
  platform: "Soundcloud",
  user_id: jane.id,
  genre_id: latin.id)

Share.create!(link: "https://soundcloud.com/hive-productions",
  platform: "Soundcloud",
  user_id: hive.id,
  genre_id: hip_hop.id)

Share.create!(link: "https://soundcloud.com/grubber",
  platform: "Soundcloud",
  user_id: grubber.id,
  genre_id: rock.id)

Share.create!(link: "https://soundcloud.com/chae-sole",
  platform: "Soundcloud",
  user_id: chae.id,
  genre_id: latin.id)

Share.create!(link: "https://soundcloud.com/mark-evans",
  platform: "Soundcloud",
  user_id: mark.id,
  genre_id: folk.id)

Share.create!(link: "https://soundcloud.com/jesse-slack",
  platform: "Soundcloud",
  user_id: jesse.id,
  genre_id: folk.id)

Share.create!(link: "https://soundcloud.com/eileen-art",
  platform: "Soundcloud",
  user_id: eileen.id,
  genre_id: non_music.id)

Share.create!(link: "https://soundcloud.com/carol-lustrious",
  platform: "Soundcloud",
  user_id: carol.id,
  genre_id: non_music.id)

Share.create!(link: "https://soundcloud.com/master-mary",
  platform: "Soundcloud",
  user_id: mary.id,
  genre_id: non_music.id)

Share.create!(link: "https://soundcloud.com/sade-adu",
  platform: "Soundcloud",
  user_id: sade.id,
  genre_id: pop.id)

Share.create!(link: "https://soundcloud.com/janelle-monae",
  platform: "Soundcloud",
  user_id: janelle.id,
  genre_id: pop.id)

Share.create!(link: "https://soundcloud.com/ada-ehi",
  platform: "Soundcloud",
  user_id: ada.id,
  genre_id: stage.id)

Share.create!(link: "https://soundcloud.com/cali-celts",
  platform: "Soundcloud",
  user_id: celts.id,
  genre_id: reggae.id)

Share.create!(link: "https://soundcloud.com/dash-records",
  platform: "Soundcloud",
  user_id: david.id,
  genre_id: stage.id)

Share.create!(link: "https://soundcloud.com/bobby-gene",
  platform: "Soundcloud",
  user_id: bob.id,
  genre_id: non_music.id)

Share.create!(link: "https://soundcloud.com/miss-kittie",
  platform: "Soundcloud",
  user_id: kittie.id,
  genre_id: stage.id)

Share.create!(link: "https://soundcloud.com/vex",
  platform: "Soundcloud",
  user_id: vex.id,
  genre_id: hip_hop.id)

Share.create!(link: "https://soundcloud.com/dane",
  platform: "Soundcloud",
  user_id: dane.id,
  genre_id: funk_soul.id)

Share.create!(link: "https://soundcloud.com/dionne",
  platform: "Soundcloud",
  user_id: dionne.id,
  genre_id: classical.id)

Share.create!(link: "https://soundcloud.com/victoria-qt",
  platform: "Soundcloud",
  user_id: qt.id,
  genre_id: latin.id)

Share.create!(link: "https://soundcloud.com/guy-ro",
  platform: "Soundcloud",
  user_id: guy.id,
  genre_id: folk.id)



puts "...finished"

puts "creating genres for users"

kevin.genres << [funk_soul, pop, blues]
herve.genres << [electronic, non_music, stage]
daniel.genres << [jazz, classical, folk]
joleana.genres << [rock, childrens, latin]
jane.genres << [latin, rock, pop]
hive.genres << [hip_hop, electronic, stage]
grubber.genres << [rock, blues]
chae.genres << [latin, blues, funk_soul]
mark.genres << [folk, blues]
jesse.genres << [folk, blues]
eileen.genres << [non_music]
carol.genres << [non_music]
mary.genres << [non_music, childrens]
sade.genres << [pop, stage]
janelle.genres << [pop, stage]
ada.genres << [stage, reggae, folk]
celts.genres << [folk, reggae, stage, blues, funk_soul]
david.genres << [stage, jazz, funk_soul, electronic]
bob.genres << [non_music, stage, classical]
kittie.genres << [electronic, classical, stage]
vex.genres << [hip_hop, pop, electronic]
dane.genres << [hip_hop, funk_soul]
dionne.genres << [classical, stage, military]
qt.genres << [funk_soul, jazz, reggae, latin]
guy.genres << [folk, electronic, stage]

puts "...finished"

puts "creating skills for users"

kevin.skills << [vocals, conducting, writing]
herve.skills << [dj_mix, remix, technical]
daniel.skills << [instruments, arrangement, production]
joleana.skills << [management, acting, visuals]
jane.skills << [vocals, arrangement, writing]
hive.skills << [remix, production, management, dj_mix]
grubber.skills << [vocals, instruments, arrangement]
chae.skills << [vocals, writing, acting]
mark.skills << [vocals, instruments]
jesse.skills << [vocals, instruments]
eileen.skills << [visuals, technical]
carol.skills << [visuals, technical]
mary.skills << [visuals, writing]
sade.skills << [vocals, writing, acting]
janelle.skills << [vocals, writing, acting]
ada.skills << [acting, production, vocals]
celts.skills << [visuals, acting, instruments, writing, production]
david.skills << [production, arrangement, management, instruments]
bob.skills << [production, management, technical, conducting]
kittie.skills << [dj_mix, remix, instruments]
vex.skills << [instruments, acting, remix]
dane.skills << [remix, vocals, arrangement]
dionne.skills << [instruments, technical]
qt.skills << [remix, vocals, arrangement, production]
guy.skills << [production, arrangement, instruments]

puts "...and done!"

