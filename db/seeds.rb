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
    transportation_type: "car",
    cost: "100",
    location: "London",
    date_start: "2018/08/23",
    date_end: "2018/08/23",
    rating: "4",
    photo: Rails.root.join("app/assets/images/b.jpg").open,
    description: "something"
  }, {
    transportation_type: "car",
    cost: "400",
    location: "Paris",
    date_start: "2018/08/23",
    date_end: "2018/08/23",
    rating: "5",
    photo: Rails.root.join("app/assets/images/c.jpg").open,
     description: "something"
    }, {
      transportation_type: "car",
      cost: "250",
      location: "copenhagen",
      date_start: "2018/08/23",
      date_end: "2018/08/23",
      rating: "5",
      photo: Rails.root.join("app/assets/images/d.jpg").open,
      description: "something"
      }, {
        transportation_type: "car",
        cost: "385",
        location: "casablanca",
        date_start: "2018/08/23",
        date_end: "2018/08/23",
        rating: "3",
        photo: Rails.root.join("app/assets/images/e.jpg").open,
        description: "something"
        }, {
            transportation_type: "car",
            cost: "100",
            location: "copenhagen",
            date_start: "2018/08/23",
            date_end: "2018/08/23",
            rating: "3",
            photo: Rails.root.join("app/assets/images/auto.jpg").open,
            description: "something"
          }, {
        transportation_type: "car",
        cost: "385",
        location: "casablanca",
        date_start: "2018/08/23",
        date_end: "2018/08/23",
        rating: "3",
        photo: Rails.root.join("app/assets/images/f.jpg").open,
        description: "something"
        }, {
        transportation_type: "car",
        cost: "385",
        location: "casablanca",
        date_start: "2018/08/23",
        date_end: "2018/08/23",
        rating: "3",
        photo: Rails.root.join("app/assets/images/g.jpg").open,
        description: "something"
        }, {
        transportation_type: "car",
        cost: "385",
        location: "casablanca",
        date_start: "2018/08/23",
        date_end: "2018/08/23",
        rating: "3",
        photo: Rails.root.join("app/assets/images/h.jpg").open,
        description: "something"
        },{
        transportation_type: "car",
        cost: "385",
        location: "casablanca",
        date_start: "2018/08/23",
        date_end: "2018/08/23",
        rating: "3",
        photo: Rails.root.join("app/assets/images/i.jpg").open,
        description: "something"
        },{
        transportation_type: "car",
        cost: "385",
        location: "casablanca",
        date_start: "2018/08/23",
        date_end: "2018/08/23",
        rating: "3",
        photo: Rails.root.join("app/assets/images/j.jpg").open,
        description: "something"
        },{
        transportation_type: "car",
        cost: "385",
        location: "casablanca",
        date_start: "2018/08/23",
        date_end: "2018/08/23",
        rating: "3",
        photo: Rails.root.join("app/assets/images/k.jpg").open,
        description: "something"
        },{
        transportation_type: "car",
        cost: "385",
        location: "casablanca",
        date_start: "2018/08/23",
        date_end: "2018/08/23",
        rating: "3",
        photo: Rails.root.join("app/assets/images/l.jpg").open,
        description: "something"
        },{
        transportation_type: "car",
        cost: "385",
        location: "casablanca",
        date_start: "2018/08/23",
        date_end: "2018/08/23",
        rating: "3",
        photo: Rails.root.join("app/assets/images/m.jpg").open,
        description: "something"
        }, {
        transportation_type: "car",
        cost: "385",
        location: "casablanca",
        date_start: "2018/08/23",
        date_end: "2018/08/23",
        rating: "3",
        photo: Rails.root.join("app/assets/images/n.jpg").open,
        description: "something"
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
while i < 10
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


