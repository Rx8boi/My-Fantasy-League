# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
32.times do

    player= Player.new(
    name: Faker::Sports::Basketball.player,
    team: Faker::Sports::Basketball.team,
    position: Faker::Sports::Basketball.position,
    )
    
    player.save
end