# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.all.destroy_all
User.all.destroy_all

u = User.create!(
	email: 'test@test.com',
	password: 'test123',
)

categories = Category.create([
	{ name: 'adventure', user: u }, 
	{ name: 'business', user: u },
	{ name: 'leisure', user: u },
	{ name: 'culture', user: u },
	{ name: 'family', user: u },
	{ name: 'sports', user: u }
])

adventure = Category.where(name: 'adventure').first
leisure = Category.where(name: 'leisure').first
culture = Category.where(name: 'culture').first 
family = Category.where(name: 'family').first
sport = Category.where(name: 'sports').first

adventure_sub = %w[ extreme safari sightseeing mountains gamble party]
leisure_sub = %w[ sunbathing spa massage food sightseeing gamble party relax romantic ]
culture_sub = %w[ art history music_perfomance ]
family_sub = %w[ food amusement animations water_parks amusement nursery ]
sport_sub  =  %w[ water_sports winter_sports solo trekking ]

adventure_sub.each do |type|
	SubCategory.create!(
		name: type,
		category: adventure,
		user: u
	)
end

leisure_sub.each do |type|
	SubCategory.create!(
		name: type,
		category: leisure,
		user: u
	)
end

culture_sub.each do |type|
	SubCategory.create!(
		name: type,
		category: culture,
		user: u
	)
end

family_sub.each do |type|
	SubCategory.create!(
		name: type,
		category: family,
		user: u
	)
end

sport_sub.each do |type|
	SubCategory.create!(
		name: type,
		category: sport,
		user: u
	)
end