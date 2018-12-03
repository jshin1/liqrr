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
Recipe.create(name: "Dirty Martini", occasion: "when a regular martini ain't cutting it", category: "Martini", instructions: "wd;lnkwdlkfn", glass: "Martini glass")

Ingredient.create(name: "Gin", alcoholic: true, mixer: false, description: "A liquor which derives its predominant flavour from juniper berries. Gin is one of the broadest categories of spirits, all of various origins, styles, and flavour profiles that revolve around juniper as a common ingredient.")
Ingredient.create(name: "Dry Vermouth", alcoholic: true, mixer: true, description: "dry version of vermouth")
Ingredient.create(name: "Olive juice", alcoholic: false, mixer: true, description: "it's olive juice, self-explanatory")
Ingredient.create(name: "Olive garnish", alcoholic: false, mixer: false, description: "literally an olive")

RecipeIngredient.create(measurement: 1, recipe: Recipe.find_by(name: "Dirty Martini"), ingredient: Ingredient.find_by(name: "Gin"))
