# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.create([{name: 'v-neck', description: 'A low cut t-shirt.', category: 'shirt'},
							 {name: 't-shirt', description: 'A standard t-shirt.', category: 'shirt'},
							 {name: 'button-down', description: 'A shirt with buttons down the front.', category: 'shirt'},
							 {name: 'slacks', description: 'Dress pants.', category: 'pants'},
							 {name: 'jeans', description: 'Standard jeans.', category: 'pants'},
							 {name: 'shorts', description: 'Standard shorts.', category: 'pants'},
							 {name: 'loafers', description: 'Casual slip on shoes.', category: 'shoes'},
							 {name: 'dress', description: 'Standard Dress shoes.', category: 'shoes'},
							 {name: 'sneakers', description: 'Athletic shoes.', category: 'shoes'}])
							 
