require 'rest-client'
require 'json'

# API = 'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i='
# id_count =  0
#
# def request(url, id)
#   response_string = RestClient.get(url + id.to_s)
#   response_hash = JSON.parse(response_string)
#   response_hash
# end

# request(API, '12402')['drinks'][0]
# this gets us a hash of one drink

# id_count = 0
# while id_count < 20
#   id_count += 1
#   drink_hash = request(API, id_count)
#     if drink_hash['drinks']
#       recipe = Recipe.new
# end



# def seed_db
#   drink_hash = request(API, '12402')['drinks'][0]
#   new_recipe = Recipe.create(name: drink_hash['strDrink'], instructions: drink_hash['strInstructions'], glass: drink_hash['strGlass'], img_url: drink_hash['strDrinkThumb'], category: drink_hash['strCategory'])
#   RecipeIngredient.create(recipe: new_recipe, measurement: drink_hash['strMeasure1'], ingredient: Ingredient.find_or_create_by(name: drink_hash['strIngredient1']))
#   RecipeIngredient.create(recipe: new_recipe, measurement: drink_hash['strMeasure2'], ingredient: Ingredient.find_or_create_by(name: drink_hash['strIngredient2']))
# end
#
# seed_db

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

RecipeIngredient.create(measurement: "1 oz", recipe: Recipe.find_by(name: "Dirty Martini"), ingredient: Ingredient.find_by(name: "Gin"))
