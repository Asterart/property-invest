# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Property.create!(address: "Warszawa",
								description: Faker::Lorem.sentence(5),
								street: "Wiejska",
								country: "Polska",
								l_desc: Faker::Lorem.sentence(15)
								)

15.times do |n|
	addr = Faker::Address.city
	str = Faker::Address.street_name
	ctr = Faker::Address.country
	txt = Faker::Lorem.sentence(5)
	txt2 = Faker::Lorem.sentence(15)
	Property.create!(
				address: addr,
				description: txt,
				street: str,
				country: ctr,
				l_desc: txt
				)
end