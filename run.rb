require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
spicy_foods.each do |food_description|
  chili_emoji = "🌶" * food_description[:heat_level].to_i
 puts "#{food_description[:name]} (#{food_description[:cuisine]}) | Heat Level: #{chili_emoji}"
end
end

def get_names(spicy_foods)
spicy_foods.map do |food_description|
  food_description[:name]
end
end

def spiciest_foods(spicy_foods)
  spicy_heat = spicy_foods.select do |food_description|
  food_description[:heat_level] > 5
end
spicy_heat
end 

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
spicy_foods.find do |food_description|
    if cuisine == food_description[:cuisine]
      return food_description
    end
  end
end

get_spicy_food_by_cuisine(spicy_foods, "American")

# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
 spiciest_foods = spiciest_foods(spicy_foods)
 print_spicy_foods(spiciest_foods)
end

def average_heat_level(spicy_foods)
  heat_level_array = []
spicy_foods.map do |food_description|
  heat_level_array << food_description[:heat_level] 
end
 average_heat = (heat_level_array.sum) / (heat_level_array.count)
 average_heat
end

# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console
binding.pry
"pls"