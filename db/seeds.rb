# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.create([{id:1, name:"Code", country: "Peru"}, {id:2, name:"Codea", country: "Peru"}])
Game.create([{id: 1, name: "Rune Factory 4 Special", genre: "Role-playing (RPG)", price: 5999, release_date: "2019-07-25", company_id: 1}, {id: 2, name: "Borderlands 3", genre: "Simulator", price: 5999, release_date: "2019-09-13", company_id: 2} ])
