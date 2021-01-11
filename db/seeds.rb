# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create! :email => 'test@test.com', :password => 'topsecret', :password_confirmation => 'topsecret'

Widget.create! :name => 'Henrietta'
Widget.create! :name => 'Harper-Rose'
Widget.create! :name => 'Patchwork'
Widget.create! :name => 'Chocolate'
Widget.create! :name => 'Decopatch'
Widget.create! :name => 'Lovelywumps'
Widget.create! :name => 'Adorableworth'
Widget.create! :name => 'Mocha'
Widget.create! :name => 'Chestnut'
Widget.create! :name => 'Splatter'