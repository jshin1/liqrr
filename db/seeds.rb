require 'rest-client'
require 'json'

API = 'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i='
ingredient_count =  0

def request(url, id)
  response_string = RestClient.get(url + id.to_s)
  response_hash = JSON.parse(response_string)
  response_hash
end

# request(API, '12402')['drinks'][0]
# this gets us a hash of one drink

# id_count = 0
# while id_count < 20
#   id_count += 1
#   drink_hash = request(API, id_count)
#     if drink_hash['drinks']
#       recipe = Recipe.new
# end



def seed_db
  ingredient_count = 0
  drink_id = 12400
  while drink_id < 12500
    drink_id += 1
    drink_hash = request(API, drink_id.to_s)
    if drink_hash['drinks']
      new_recipe = Recipe.create(name: drink_hash['strDrink'], instructions: drink_hash['strInstructions'], glass: drink_hash['strGlass'], img_url: drink_hash['strDrinkThumb'], category: drink_hash['strCategory'])
      while ingredient_count < 15
        ingredient_count += 1
        measure_arg = 'strMeasure' + ingredient_count.to_s
        ingredient_arg = 'strIngredient' + ingredient_count.to_s
        if drink_hash[measure_arg] != "" && drink_hash[measure_arg] != " "
          RecipeIngredient.create(recipe: new_recipe, measurement: drink_hash[measure_arg], ingredient: Ingredient.find_or_create_by(name: drink_hash[ingredient_arg]))
        end
        ingredient_count = 0
      end
    end
  end
    byebug
end

seed_db
byebug

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
