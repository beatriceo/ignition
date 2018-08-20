# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Listing.destroy_all
User.destroy_all

listing = Listing.new(transportation_type: "car", cost: "£100", location: "london", date_start: '2018-08-20', date_end: '2018-08-21', rating: 3, description: "awesome")
user = User.new(email: "test@test.com", username: "test", password: "test123", first_name: "test", last_name: "test", rating: 0, description: "shitty person")
user.save
listing.user = user
listing.save

puts "done!"
