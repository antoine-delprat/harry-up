# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database"
Rental.destroy_all
Accessory.destroy_all
User.destroy_all

puts "Creating users..."

draco = User.create!(
  username: 'draco_malfoy',
  city: 'London',
  hogwarts_house: 'Slytherin',
  email: 'draco@hogwarts.com',
  password: 'test1234'
)
file = File.open(Rails.root.join("db/seeds/users/draco.jpg"))
draco.photo.attach(io: file, filename: "draco.jpg", content_type: "image/jpeg")


cho = User.create!(
  username: 'cho_chang',
  city: 'New-York',
  hogwarts_house: 'Ravenclaw',
  email: 'cho@hogwarts.com',
  password: 'test1234',
  avatar:
)
file = File.open(Rails.root.join("db/seeds/users/cho.jpg"))
cho.photo.attach(io: file, filename: "cho.jpg", content_type: "image/jpeg")

amos = User.create!(
  username: 'amos_diggory',
  city: 'Devon',
  hogwarts_house: 'Hufflepuff',
  email: 'amos@hogwarts.com',
  password: 'test1234',
  avatar:
)
file = File.open(Rails.root.join("db/seeds/users/amos.jpg"))
amos.photo.attach(io: file, filename: "amos.jpg", content_type: "image/jpeg")

manu = User.create!(
  username: 'manu_macron',
  city: 'Paris',
  hogwarts_house: 'Slytherin',
  email: 'manu@hogwarts.com',
  password: 'test1234',
  avatar:
)
file = File.open(Rails.root.join("db/seeds/users/manu.jpg"))
manu.photo.attach(io: file, filename: "manu.jpg", content_type: "image/jpeg")

puts "Creating accessories..."
draco_wand = Accessory.create!(
  owner: draco,
  name: "Draco’s wand",
  detail: "The Draco Malfoy wand measures 34 cm. Made of resin, the wand mimics the look of hawthorn wood. It adopts a sober and refined style, with a black handle. The object is presented in an Ollivander collection box, with a velvet case, molded in the shape of the wand",
  price_per_day: 15,
  category: "Wands"
)
file = File.open(Rails.root.join("db/seeds/accessories/draco_wand.jpg"))
draco_wand.photo.attach(io: file, filename: "draco_wand.jpg", content_type: "image/jpeg")

voldemort_wand = Accessory.create!(
  owner: draco,
  name: "Voldemort’s wand",
  detail: "His magic wand is made of yew wood and contains a phoenix feather, just like Harry Potter's.",
  price_per_day: 50,
  category: "Wands"
)
file = File.open(Rails.root.join("db/seeds/accessories/voldemort_wand.jpg"))
voldemort_wand.photo.attach(io: file, filename: "voldemort_wand.jpg", content_type: "image/jpeg")

firebolt = Accessory.create!(
  owner: draco,
  name: "Firebolt",
  detail: "Rubberwood handle and engraved runes. Birch and rattan bristles. Removable footrests can be installed in two different ways. Wrapped in Quidditch wrapping paper. Golden runes engraved on the handle. Delivered in 2 pieces. Easy assembly with screw system. A feather reminiscent of Buck comes with the broom. Dimensions: 165cm – Weight: 3210grs",
  price_per_day: 30,
  category: "Brooms"
)
file = File.open(Rails.root.join("db/seeds/accessories/firebolt.jpg"))
firebolt.photo.attach(io: file, filename: "firebolt.jpg", content_type: "image/jpeg")

thestral = Accessory.create!(
  owner: draco,
  name: "Thestral",
  detail: "The Thestral was a breed of winged horse with a skeletal body, a face with reptilian features, and wide, leathery wings that resembled a bat's. They were native to the British Isles and Ireland, though they had been spotted in parts of France and the Iberian Peninsula. They were very rare, and were considered dangerous by the British Ministry of Magic. Thestrals were, undeservedly, known as omens of misfortune and aggression by many wizards because they were visible only to those who had witnessed death at least once. Due to Thestrals' classification as XXXX, only experienced wizards should try to handle Thestrals. Breeding as well as owning these beasts might be discouraged or even illegal without Ministry consent; in fact, wizards that lived in areas not protected against Muggles were forced by law to perform Disillusionment Charms on their Thestrals regularly.",
  price_per_day: 100,
  category: "Animals"
)
file = File.open(Rails.root.join("db/seeds/accessories/thestral.jpg"))
thestral.photo.attach(io: file, filename: "thestral.jpg", content_type: "image/jpeg")

nimbus_2000 = Accessory.create!(
  owner: cho,
  name: "Nimbus 2000",
  detail: "The Broom Nimbus 2000 is an authentic, life-size replica: it measures approximately 1m60. This deluxe version is cut and assembled by hand: it has a fully varnished mahogany neck, and a brush reconstituted in authentic willow wood",
  price_per_day: 15,
  category: "Brooms"
)
file = File.open(Rails.root.join("db/seeds/accessories/nimbus_2000.jpg"))
nimbus_2000.photo.attach(io: file, filename: "nimbus_2000.jpg", content_type: "image/jpeg")

nimbus_2001 = Accessory.create!(
  owner: cho,
  name: "Nimbus 2001",
  detail: "The Nimbus 2001 was a broom produced by the Nimbus Racing Broom Company as part of their successful line of racing brooms.",
  price_per_day: 20,
  category: "Brooms"
)
file = File.open(Rails.root.join("db/seeds/accessories/nimbus_2001.jpg"))
nimbus_2001.photo.attach(io: file, filename: "nimbus_2001.jpg", content_type: "image/jpeg")

hippogriff = Accessory.create!(
  owner: cho,
  name: "Hippogriff",
  detail: "A Hippogriff was a magical beast that had the front legs, wings, and head of a giant eagle and the body, hind legs and tail of a horse. It was very similar to another magical creature, the Griffin, with the horse rear replacing the lion rear. The breeding of fancy Hippogriffs was an established wizarding career, with known breeders including Newton Scamander's mother. Images of fancy Hippogriffs were sometimes put onto calendars. A Hippogriff was one rare possible corporeal form of the Patronus Charm.",
  price_per_day: 150,
  category: "Animals"
)
file = File.open(Rails.root.join("db/seeds/accessories/hippogriff.jpg"))
hippogriff.photo.attach(io: file, filename: "hippogriff.jpg", content_type: "image/jpeg")

cedric_wand = Accessory.create!(
  owner: amos,
  name: "Cedric’s wand",
  detail: "Cedric Diggory's wand is made of ash, a large tree, with unicorn hair inside. This magic wand was made by Garrick Ollivander, around 1988. Throughout his schooling, Cédric used this wand. He also used it during the Triwizard Tournament.",
  price_per_day: 10,
  category: "Wands"
)
file = File.open(Rails.root.join("db/seeds/accessories/cedric_wand.jpg"))
cedric_wand.photo.attach(io: file, filename: "cedric_wand.jpg", content_type: "image/jpeg")

silver_arrow = Accessory.create!(
  owner: amos,
  name: "Silver Arrow",
  detail: "The Silver Arrow is a model of flying broomsticks handcrafted by Leonard Jewkes.",
  price_per_day: 10,
  category: "Brooms"
)
file = File.open(Rails.root.join("db/seeds/accessories/silver_arrow.jpg"))
silver_arrow.photo.attach(io: file, filename: "silver_arrow.jpg", content_type: "image/jpeg")

centaur = Accessory.create!(
  owner: amos,
  name: "Centaur",
  detail: "The classification of the Ministry of Magic is not related to any aggressiveness but means that centaurs must be treated with the greatest respect. Intelligent and gifted with words, it was at their request that they were classified as animals and not beings. The customs of centaurs are very different from those of humans: they live in the middle of nature, refuse to dress, avoid contact with humans while having an intelligence equal to theirs.",
  price_per_day: 120,
  category: "Animals"
)
file = File.open(Rails.root.join("db/seeds/accessories/centaur.jpg"))
centaur.photo.attach(io: file, filename: "centaur.jpg", content_type: "image/jpeg")

elder_wand = Accessory.create!(
  owner: manu,
  name: "Elder wand",
  detail: "The dark elderwood magic wand contains a Thestral tail hair with a handle embellished with spheres. Authentic and faithful replica, this resin wand measures approximately 40 cm. It is presented in an Ollivander collection box, with a velvet case, molded in the shape of the baguette.",
  price_per_day: 90,
  category: "Wands"
)
file = File.open(Rails.root.join("db/seeds/accessories/elder_wand.jpg"))
elder_wand.photo.attach(io: file, filename: "elder_wand.jpg", content_type: "image/jpeg")

dragon = Accessory.create!(
  owner: manu,
  name: "Dragon",
  detail: "Like all dragons, females are even more dangerous than males. This makes the Magyar female an extremely dangerous creature, and probably even more so when she feels her eggs are in danger.",
  price_per_day: 250,
  category: "Animals"
)
file = File.open(Rails.root.join("db/seeds/accessories/dragon.jpg"))
dragon.photo.attach(io: file, filename: "dragon.jpg", content_type: "image/jpeg")

powder = Accessory.create!(
  owner: manu,
  name: "Perlimpinpin powder",
  detail: "Powder that charlatans spouted as a cure for all sorts of ailments. (figuratively) False miracle solution.",
  price_per_day: 1000,
  category: "Others"
)
file = File.open(Rails.root.join("db/seeds/accessories/powder.jpg"))
powder.photo.attach(io: file, filename: "powder.jpg", content_type: "image/jpeg")

puts "Creating rental contracts..."
rental_1 = Rental.create!(
  renter: draco,
  accessory: nimbus_2001,
  start_date: "2023-01-01",
  end_date: "2023-01-04",
  status: "Accepted",
  final_price: 80
)
rental_2 = Rental.create!(
  renter: draco,
  accessory: hippogriff,
  start_date: "2023-03-15",
  end_date: "2023-03-16",
  status: "Accepted",
  final_price: 300
)
rental_3 = Rental.create!(
  renter: cho,
  accessory: voldemort_wand,
  start_date: "2023-04-15",
  end_date: "2023-04-15",
  status: "Rejected",
  final_price: 50
)
rental_4 = Rental.create!(
  renter: draco,
  accessory: dragon,
  start_date: "2023-05-01",
  end_date: "2023-05-03",
  status: "Accepted",
  final_price: 750
)
rental_5 = Rental.create!(
  renter: draco,
  accessory: silver_arrow,
  start_date: "2023-06-10",
  end_date: "2023-06-12",
  status: "Pending",
  final_price: 30
)
rental_6 = Rental.create!(
  renter: manu,
  accessory: thestral,
  start_date: "2023-05-10",
  end_date: "2023-05-12",
  status: "Accepted",
  final_price: 300
)
rental_7 = Rental.create!(
  renter: amos,
  accessory: firebolt,
  start_date: "2023-07-12",
  end_date: "2023-07-14",
  status: "Pending",
  final_price: 90
)

puts "Seeds finished!"
