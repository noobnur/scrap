# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.delete_all
Location.create(name: 'Jurong East')
Location.create(name: 'Bukit Batok')
Location.create(name: 'Bukit Gombak')
Location.create(name: 'Choa Chu Kang')
Location.create(name: 'Yew Tee')
Location.create(name: 'Kranji')
Location.create(name: 'Marsiling')
Location.create(name: 'Woodlands')
Location.create(name: 'Admiralty')
Location.create(name: 'Sembawang')

Category.delete_all
Category.create(name: 'Food')
Category.create(name: 'Electronics')
Category.create(name: 'Plastics')
Category.create(name: 'Metal')
Category.create(name: 'Wood')
Category.create(name: 'Paper')
