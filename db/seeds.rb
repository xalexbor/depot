# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create!(name: "First Car", description: "More more more joulse!", image_url: "car1.png", price: 1200)
Product.create!(name: "Second Car", description: "More more more machines!", image_url: "car2.png", price: 1100)
