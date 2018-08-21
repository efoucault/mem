# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroy all"
Watch.destroy_all
User.destroy_all


puts "users creation"
john = User.create(password: 'abc123456', first_name: 'John', last_name: 'Doe', address: '44 Boulevard Magenta', description: 'Bell & Ross Lover', super_user: false, email: 'johndoe1@gmail.com')
patrick = User.create(password: 'abc123456', first_name: 'Patrick', last_name: 'Pierrard', address: '15 rue du petit Musc', description: 'Rolex Lover', super_user: true, email: 'p.pierr1@gmail.com')
eva = User.create(password: 'abc123456', first_name: 'Eva', last_name: 'Musso', address: '57 rue Saint Maur', description: 'Swatch Lover', super_user: false, email: 'musso.e2@gmail.com')
charles = User.create(password: 'abc123456', first_name: 'Charles', last_name: 'Beigbeder', address: '40 Villa Gaudelet', description: 'IWC Lover', super_user: true, email: 'charlesbeig4@gmail.com')
chloe = User.create(password: 'abc123456', first_name: 'Chloé', last_name: 'Van Reymant', address: '11 Rue de Belleville', description: 'FlicFlac Lover', super_user: false, email: 'vrchloe5@gmail.com')
sarah = User.create(password: 'abc123456', first_name: 'Sarah', last_name: 'Ammar', address: '89 Boulevard Ménilmontant', description: 'Audemar Piguet Lover', super_user: false, email: 'sarahammar5@gmail.com')
p User.all

puts "watches creation"
Watch.create!(user: john , production_year: '1951', brand: 'Rolex', model: 'Daytona', price_per_day: 250, description: "Chopard is known as one of the greats – and with good reason. After winning watch of the year for their ‘L.U.C Full Strike’ at the 2017 Geneva Watchmaking Grand Prix, they’re back with a familiar (yet no less exciting) watch for 2018.", color: 'blue', mechanism: 'Mechanical Movement', case_material: "Stainless", style: "elegant")
Watch.create!(user: patrick , production_year: '1939', brand: 'Bell & Ross', model: 'BR V2-94 R.S', price_per_day: 90, description: "The eponymous Rolex gifted to Paul Newman by his wife Joanne Woodward (it's engraved with the message 'Drive Carefully' in reference to his love for racing) in 1968, the Paul Newman Daytona has been considered a holy grail timepiece amongst collectors and fans for decades, but even the most fervent Rolex fanboys couldn't have imagined just how much it would reach in auction.", color: 'gold', mechanism: 'Quartz Movement', case_material: "Yellow Gold Filled", style: "sport")
Watch.create!(user: eva , production_year: '1926', brand: 'Audemars Piguet', model: 'Royal Oak', price_per_day: 320, description: "Audemars have previous when it comes to crafting head-spinning cocktails of complications (shop-talk for 'features') – in fact, they've probably been doing it longer than any existing watch manufacturer.", color: 'silver', mechanism: 'Mechanical Movement', case_material: "White Gold Filled", style: "wedding")
Watch.create!(user: charles , production_year: '2006', brand: 'IWC', model: 'Portofino', price_per_day: 105, description: "Timeless elegance in consummate form: with three hands and a discreet date display, this simple automatic watch has established itself as one of the most popular Portofino models.", color: 'white', mechanism: 'Quartz Movement', case_material: "Gold Shell", style: "classic")
Watch.create!(user: chloe , production_year: '1991', brand: 'Chopard', model: 'L.U.C ALL-IN-ONE', price_per_day: 85, description: "Chopard is known as one of the greats – and with good reason. After winning watch of the year for their ‘L.U.C Full Strike’ at the 2017 Geneva Watchmaking Grand Prix, they’re back with a familiar (yet no less exciting) watch for 2018.", color: 'black', mechanism: 'Mechanical Movement', case_material: "Platinum", style: "sport")
Watch.create!(
  user: sarah ,
  production_year: '2002',
  brand: 'Bulgari',
  model: 'Magsonic sonnerie Tourbillon',
  price_per_day: 50,
  description: "When Italian jewelry monolith Bulgari purchased Swiss watch brand Gerald Genta, the most celebrated (and money-spinning) result was this: the 'Magsonic Sonnerie Tourbillon'.",
  color: 'red',
  mechanism: 'Quartz Movement',
  case_material: "14k Yellow Gold",
  style: "chic"
)
p Watch.all
