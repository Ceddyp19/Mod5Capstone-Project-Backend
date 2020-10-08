# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


user_a = User.create(name: Faker::Name.name, email: Faker::Internet.email)
user_b = User.create(name: Faker::Name.name, email: Faker::Internet.email)
user_c = User.create(name: Faker::Name.name, email: Faker::Internet.email)
user_d = User.create(name: Faker::Name.name, email: Faker::Internet.email)
 
destination_a = Destination.create( name: "Walmart", latitude: "40.730610", longitude: "-73.935242")
destination_b = Destination.create(name: "6 Flags", latitude: "30.26715", longitude: "-97.74306")
destination_c = Destination.create(name: "Toca Bell", latitude: "45.512794", longitude: "-122.679565")
 
favorite_a = Favorite.create(user: user_a, destination: destination_b)
favorite_b = Favorite.create(user: user_b, destination: destination_a)
favorite_c = Favorite.create(user: user_c, destination: destination_a)
favorite_d = Favorite.create(user: user_d, destination: destination_c)
favorite_e = Favorite.create(user: user_a, destination: destination_b)