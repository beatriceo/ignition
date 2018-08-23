# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# puts "Deleting Everything in DB"
# Listing.destroy_all
# User.destroy_all
# Offer.destroy_all


# users =  [{
#     email: "df34sdf2@gmail.com",
#     username: "alpha123",
#     password: "hunter2",
#     first_name: "Alex",
#     last_name: "Jones",
#     description: "Check out my Show InfoWars!"
#   }, {
#     email: "5df35f32@yahoo.com",
#     username: "XxxH4X0RxxX",
#     password: "this is actually a good password",
#     first_name: "Daniel",
#     last_name: "Geisbrecht",
#     description: "Am a proud black-hat hacker and wanted criminal"
#     }, {
#       email: "giraffe@hotmail.co.uk",
#       username: "pinkysparkles",
#       password: "chocolatecovereddepression",
#       first_name: "Sarah",
#       last_name: "McClymont",
#       description: "Studying Biology"
#       }, {
#         email: "test@test",
#         username: "test",
#         password: "123abc",
#         first_name: "Anonymous",
#         last_name: "Person",
#         description: "Does this person even exist?"
#         }, {
#           email: "geoffe@devtalk.com",
#           username: "xyaric",
#           password: "3d8d%3jf$@3ff$efj))",
#           first_name: "Geoffe",
#           last_name: "Smith",
#           description: "Freelance Developer at Devtalk"
#           }]

# puts "Adding Template Data to DB"

# i = 0
# while i < 5
#   # binding.pry
#   listing = Listing.new(listings[i])
#   user = User.new(users[i])
#   offer = Offer.new

#   listing.user = user
#   offer.listing = listing
#   offer.user = user

#   listing.save
#   user.save
#   offer.save
#   i += 1
# end

# def create_admin
#   user = User.new(
#     email: "admin@lewagon.com",
#     username: "admin",
#     password: "admin1",
#     admin: true
#     )

#   user.save
# end

# create_admin

# puts "Complete!"
puts "Deleting Everything in DB"
Listing.destroy_all
User.destroy_all
Offer.destroy_all

puts "Creating Template Data..."
listings = [{
    transportation_type: "Car",
    cost: "$100",
    location: "London",
    date_start: "2018-08-20",
    date_end: "2018-08-27",
    rating: 3,
    description: "awesome"
  }, {
    transportation_type: "Boat",
    cost: "$200",
    location: "Madrid",
    date_start: "2018-09-23",
    date_end: "2018-10-17",
    rating: 5,
    description: "Don't know what to do with it, putting it up for rent."
    }, {
      transportation_type: "Bicycle",
      cost: "$73",
      location: "Amsterdam",
      date_start: "2018-08-31",
      date_end: "2018-09-25",
      rating: 1,
      description: "My really old bike, not that impressive but it'll do the job, maybe?"
      }, {
        transportation_type: "Helicopters",
        cost: "$3600",
        location: "Los Angeles",
        date_start: "2018-12-24",
        date_end: "2018-12-25",
        rating: 4,
        description: "Surprise your loved one with a present delivered by helicoper!"
        }, {
            transportation_type: "Yaht",
            cost: "$5620",
            location: "Fredrickton",
            date_start: "2018-08-31",
            date_end: "2018-08-31",
            rating: 1,
            description: "Do whatever you want for it for 1 day! Host a party or smth i don't care"
          }]


users =  [{
    email: "df34sdf2@gmail.com",
    username: "alpha123",
    password: "hunter2",
    first_name: "Alex",
    last_name: "Jones",
    description: "Check out my Show InfoWars!"
  }, {
    email: "5df35f32@yahoo.com",
    username: "XxxH4X0RxxX",
    password: "this is actually a good password",
    first_name: "Daniel",
    last_name: "Geisbrecht",
    description: "Am a proud black-hat hacker and wanted criminal"
    }, {
      email: "giraffe@hotmail.co.uk",
      username: "pinkysparkles",
      password: "chocolatecovereddepression",
      first_name: "Sarah",
      last_name: "McClymont",
      description: "Studying Biology"
      }, {
        email: "test@test",
        username: "test",
        password: "123abc",
        first_name: "Anonymous",
        last_name: "Person",
        description: "Does this person even exist?"
        }, {
          email: "geoffe@devtalk.com",
          username: "xyaric",
          password: "3d8d%3jf$@3ff$efj))",
          first_name: "Geoffe",
          last_name: "Smith",
          description: "Freelance Developer at Devtalk"
          }]

puts "Adding Template Data to DB"

i = 0
while i < 5
  # binding.pry
  listing = Listing.new(listings[i])
  user = User.new(users[i])
  offer = Offer.new

  listing.user = user
  offer.listing = listing
  offer.user = user

  listing.save
  user.save
  offer.save
  i += 1
end

def create_admin
  user = User.new(
    email: "admin@lewagon.com",
    username: "admin",
    password: "admin1",
    admin: true
    )

  user.save
end

create_admin

puts "Complete!"


