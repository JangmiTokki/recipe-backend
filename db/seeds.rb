# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Recipe.destroy_all

sweet_potato_katsu_curry = Recipe.create!(title: "Sweet Potato Katsu Curry", image: "https://static.wixstatic.com/media/9850bf_31ebc316b117483086fa2088880e2c40~mv2_d_2524_2461_s_4_2.jpeg/v1/fill/w_2524,h_2461,al_c,q_90/9850bf_31ebc316b117483086fa2088880e2c40~mv2_d_2524_2461_s_4_2.webp", source_name: "Defying Hangry", source_url: "https://www.defyinghangry.com", calories: 777)
korean_fried_chicken = Recipe.create!(title: "Korean Fried Chicken", image: "https://mykoreankitchen.com/wp-content/uploads/2017/10/1.-Korean-Fried-Chicken.jpg", source_name: "My Korean Kitchen", source_url: "https://mykoreankitchen.com/korean-fried-chicken/", calories: 188.3)

Ingredient.create!(name:"coconut oil", measurement:"1 tsp", recipe_id: sweet_potato_katsu_curry.id)
Ingredient.create!(name:"apples", measurement:"2", recipe_id: sweet_potato_katsu_curry.id)
Ingredient.create!(name:"salt", measurement:"1/2 tsp", recipe_id: sweet_potato_katsu_curry.id)
Ingredient.create!(name:"honey", measurement: "1/4 c", recipe_id: korean_fried_chicken.id)
