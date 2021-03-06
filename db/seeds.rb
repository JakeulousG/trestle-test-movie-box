# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Administrator.create(email: "admin@example.com", password: "password", first_name: "Admin", last_name: "User")
50.times do 
    Movie.create!(
        title: Faker::Movie.title,
        description: Faker::Movie.quote,
        status: 'Released',
        premiere_date: Faker::Date.between(from: 2.years.ago, to: Date.today)
    )
end