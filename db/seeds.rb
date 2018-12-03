# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Recipe.delete_all

User.create(username: "mattyboi", first_name: "Matt", last_name: "Readout", password: "password123")

Recipe.create(name: "Old Fashioned", occasion: "when you're feeling like a godfather", category: "Cocktail" , instructions: "N/A", glass: "Old fashioned glass", img_url: "//cdn.liquor.com/wp-content/uploads/2018/05/08113350/bourbon-old-fashioned-720x720-recipe.jpg")
Recipe.create(name: "Cuba Libre", occasion: "when you're chilling in LES", category: "Highball" , instructions: "N/A", glass: "Highball glass")
