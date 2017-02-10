# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

recipe_names = %w(eggs bourbon soda vanilla chocolate nutmeg milk)
recipe_instructions = %w(shake bake pour mix turn flip throw grow)

recipes = recipe_names.product(recipe_instructions)

recipes.each do |recipe|
  name = recipe[0]
  instruction = recipe[1]
  next if Recipe.exists? name: name, instruction: instruction
  Recipe.create!(name: name, instruction: instruction)
end

ingredient_names = %w(eggs bourbon soda vanilla chocolate nutmeg milk)
ingredient_units = %w(tsp tbsp shot each bar pint oz quart)

ingredients = ingredient_names.product(ingredient_units)

ingredients.each do |ingredient|
  name = ingredient[0]
  unit = ingredient[1]
  next if Ingredient.exists? name: name, unit: unit
  Ingredient.create!(name: name,
                     unit: unit,
                     recipe: Recipe.all.sample)
end
