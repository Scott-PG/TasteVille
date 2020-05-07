# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flavor.destroy_all
Food.destroy_all

User.create(username: "Admin", email: "admin@email.com", password: "123456")

p "#{User.count} users created"

sweet = Flavor.create(name: "sweet")
bitter = Flavor.create(name: "bitter")
salty = Flavor.create(name: "salty")
umami = Flavor.create(name: "umami")
sour = Flavor.create(name: "sour")

p "#{Flavor.count} flavors created"

pizza = Food.create(name: "pizza")
sushi = Food.create(name: "sushi")
taco = Food.create(name: "taco")

p "#{Food.count} foods created"

pizza.flavors.push(salty, umami, sour, sweet, bitter)
sushi.flavors.push(umami, sweet, salty)
taco.flavors.push(umami, sweet, salty, sour)