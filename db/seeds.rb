# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Boat.destroy_all
Booking.destroy_all

puts "creating users"


jan = User.create!(first_name: "Jan", last_name: "Janssen", email: "jan@piet.nl", password: "12345678", phone_number: "4444", city: "Amsterdam", address: "Vondelpark 8")
klaas = User.create!(first_name: "Klaas", last_name: "Janssen", email: "klaas@piet.nl", password: "12345678", phone_number: "4444", city: "Amsterdam", address: "Vondelpark 8")
alice = User.create!(first_name: "Alice", last_name: "Janssen", email: "alice@piet.nl", password: "12345678", phone_number: "4444", city: "Amsterdam", address: "Vondelpark 8")

puts "creating boats"

draak = Boat.create!(owner_id: 1, name: "Draak", description: "Mooi bootje voor gezellig dagje weg met familie", category: "speedboot", photo: "fdsff", size: 4, address:"ijspadbaan", city: "Amsterdam", price: 150)
vlinder = Boat.create!(owner_id: 3, name: "Vlinder", description: "Mooi bootje voor gezellig dagje weg met familie", category: "sloep", photo: "fdsff", size: 4, address:"ijspadbaan", city: "Amsterdam", price: 150)

puts "creating booking"

a = Booking.create!(boat_id: 1, check_in_date: "2016-3-19", check_out_date: "2016-3-20", description: "Graag voor 3 mensen", status: "PENDING", owner_id: 1, renter_id: 2)

