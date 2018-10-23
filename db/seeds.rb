# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# allan = User.create(name: "Allan", email: "test@gmail.com", password: "password", password_confirmation: "password")
# Team.create(name: "Warriors", user_id: allan.id)

# bob = User.create(name: "Bob", email: "test1@gmail.com", password: "password", password_confirmation: "password")
# Team.create(name: "Lakers", user_id: bob.id)

5.times do |i| 
    Player.create(
        name: Faker::Name.name,
        image: Faker::Avatar.image,
        position: [:pg, :sg, :sf, :pf, :c].sample,
        points: rand(35),
        rebounds: rand(20),
        assists: rand(20),
        steals: rand(10),
        blocks: rand(10),
        fg: rand(30..70).to_f,
        ft: rand(50..100).to_f,
        threes: rand(3),
        turnovers: rand(10)
    )
end

puts "Created 5 players"


