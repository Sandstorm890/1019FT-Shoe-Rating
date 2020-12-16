# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shoe.create([{brand:'Nike', condition: 'old', price: 55.99, color: 'green'},
{brand:'Adidas', condition: 'new', price: 99.00, color: 'pink'},
{brand:'Nike', condition: 'old', price: 45.99, color: 'orange'}])
