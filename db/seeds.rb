# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
miami_text = ""
beirut_text = ""
budapest_text = ""
summer_text = ""
london_text = ""
kosice_text = ""
singapore_text = ""
beijing_text = ""
ukraine_text = ""
vancouver_text = ""
canada_text = ""
kiev_text = ""
germany_text = ""
delhi_text = ""

Category.all.destroy_all
Post.all.destroy_all
Place.all.destroy_all

posts = [
	{ 
		text: miami_text,
		img_url: 'http://do4r85wsrjs5z.cloudfront.net/p/426415hddba4a51e14gj0he2b2f43fi0i42/pl/en/mobile-large.jpg',
		promotion: 1
	},
	{
		text: beirut_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/150ch0fha0jbf0ag1135fcea2febjjd4bi2/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: budapest_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/935ijhbhce5add201agibe40abh0gagbhe/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: summer_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/186c415a2f4j0he1ii52hdegaf440b2acd4/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: london_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/405gbhh5hfcf5jc0eiccaegj3bjch35chj/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: kosice_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/30fgdc0e0fa3jfh1e015ce1g2jd05f40ba/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: singapore_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/2120jd2j3bd3hae0ici2gef4d0efd4g4h4/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: beijing_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/163cgh3jccfc0a13ifhfheec4b1d231j0fb/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: ukraine_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/10i5e01ab4hi1g11eb5dcef43ah2ece32a/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: vancouver_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/12c40cfc0dg1hbd1h555aee04bijjbj2je/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: canada_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/40h24cgdha5bcej022bfe0f0f0g5hg5b0/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: kiev_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/1ic50c11gddd0b1ajfffebgcifi45abj2/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: germany_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/1jgh00d00hi2ff1j0befe02b425jhf43f/pl/en/mobile-large.jpg",
		promotion: 1
	},
	{
		text: delhi_text,
		img_url: "http://d3ra06of2d636y.cloudfront.net/p/521eiffh00i5a1021f2jdae1d53bf0hahb4/pl/en/mobile-large.jpg",
		promotion: 1
	}
]
Post.create!(posts)

places = [
	{ 
		name:  'Canarian Islands',
		country: 'Spain',
		airport: 'FUE',
		cat_type: 'extreme'
	},
	{ 
		name:  'Antalya',
		country: 'Turkey',
		airport: 'AYT',
		cat_type: 'extreme'
	},
	{ 
		name:  'Miami',
		country: 'USA',
		airport: 'MIA',
		cat_type: 'extreme'
	},
	{ 
		name:  'Mombasa',
		country: 'Kenya',
		airport: 'MBA',
		cat_type: 'safari'
	},
	{ 
		name:  'Colombo',
		country: 'Sri Lanka',
		airport: 'CMB',
		cat_type: 'safari'
	},
	{
		name:  'Dubai',
		country: 'UAE',
		airport: 'DBX',
		cat_type: 'safari'
	},
	{ 
		name:  'Paris',
		country: 'France',
		airport: 'CDG',
		cat_type: 'sightseeing'
	},
	{ 
		name:  'Venice',
		country: 'Italy',
		airport: 'MXP',
		cat_type: 'sightseeing'
	},
	{ 
		name:  'Barcelona',
		country: 'Spain',
		airport: 'BCN',
		cat_type: 'sightseeing'
	},
	{ 
		name:  'Zurich',
		country: 'Switzerland',
		airport: 'ZRH',
		cat_type: 'mountains'
	},
	{ 
		name:  'Trondheim',
		country: 'Sweden',
		airport: 'TRD',
		cat_type: 'mountains'
	},
	{ 
		name:  'Los Angeles',
		country: 'USA',
		airport: 'LAX',
		cat_type: 'gambling'
	},
	{ 
		name:  'New York',
		country: 'USA',
		airport: 'EWR',
		cat_type: 'gambling'
	},
	{ 
		name:  'Ibiza',
		country: 'Spain',
		airport: 'IBZ',
		cat_type: 'party'
	},
	{ 
		name:  'Mallorca',
		country: 'Spain',
		airport: 'PMI',
		cat_type: 'party'
	},
	{ 
		name:  'Berlin',
		country: 'Deutschland',
		airport: 'TXL',
		cat_type: 'party'
	},
	{
		name: 'Katowice',
		country: 'Poland',
		airport: 'KTW',
		cat_type: 'business'
	},
	{
		name: 'Hamburg',
		country: 'Deutschland',
		airport: 'HAM',
		cat_type: 'business'
	},
	{
		name: 'Hamburg',
		country: 'Deutschland',
		airport: 'HAM',
		cat_type: 'sunbathing'
	},
	{
		name: 'Hamburg',
		country: 'Deutschland',
		airport: 'HAM',
		cat_type: 'sunbathing'
	},
	{
		name: 'Hamburg',
		country: 'Deutschland',
		airport: 'HAM',
		cat_type: 'sunbathing'
	},
	{
		name: 'Curfu',
		country: 'Greece',
		airport: 'CFU',
		cat_type: 'sunbathing'
	},
	{
		name: 'Dubrovnik',
		country: 'Croatia',
		airport: 'DBV',
		cat_type: 'sunbathing'
	},
	{
		name: 'Barcelona',
		country: 'Spain',
		airport: 'BCN',
		cat_type: 'sunbathing'
	},
	{
		name: 'Varna',
		country: 'Bulgaria',
		airport: 'VAR',
		cat_type: 'sunbathing'
	},
	{
		name: 'Split',
		country: 'Croatia',
		airport: 'SPU',
		cat_type: 'spa'
	},
	{
		name: 'Zadar',
		country: 'Croatia',
		airport: 'ZAD',
		cat_type: 'spa'
	},
	{
		name: 'Istambul',
		country: 'Turkey',
		airport: 'IST',
		cat_type: 'spa'
	},
	{
		name: 'Budapest',
		country: 'Hungary',
		airport: 'BUD',
		cat_type: 'spa'
	},
	{
		name: 'Singapore',
		country: 'Asia',
		airport: 'SIN',
		cat_type: 'massage'
	},
	{
		name: 'Delhi',
		country: 'India',
		airport: 'DEL',
		cat_type: 'food'
	},
	{
		name: 'Madrid',
		country: 'Spain',
		airport: 'MAD',
		cat_type: 'sightseeing',
	},
	{
		name: 'Tel Aviv',
		country: 'Israel',
		airport: 'TLV',
		cat_type: 'sightseeing'
	},
	{
		name: 'Los Angeles',
		country: 'USA',
		airport: 'LAX',
		cat_type: 'gambling'
	},
	{
		name: 'Singapore',
		country: 'Asia',
		airport: 'SIN',
		cat_type: 'gambling'
	},
	{
		name: 'Las Vegas',
		country: 'USA',
		airport: 'LAS',
		cat_type: 'gambling'
	},
	{
		name: 'Las Vegas',
		country: 'USA',
		airport: 'LAS',
		cat_type: 'gambling'
	},
	{
    name: 'Berlin',
    country: 'Germany',
    airport: 'TXL',
    cat_type: 'party'
	},
	{
    name: 'Ibiza',
    country: 'Spain',
    airport: 'IBZ',
    cat_type: 'party'
	},
	{
    name: 'Amsterdam',
    country: 'Netherlands',
    airport: 'AMS',
    cat_type: 'party'
	},
	{
    name: 'Lisbon ',
    country: 'Portugaly',
    airport: 'LIS',
    cat_type: 'relax'
	},
	{
    name: 'Korfu',
    country: 'Greece',
    airport: 'CFU',
    cat_type: 'relax'	
	},
	{
    name: 'Paris',
    country: 'France',
    airport: 'CDG',
    cat_type: 'romantic'
	},
	{
    name: 'Barcelona',
    country: 'Spain',
    airport: 'BCN',
    cat_type: 'romantic'
	},
	{
    name: 'Lisbon',
    country: 'Portugaly',
    airport: 'LIS',
    cat_type: 'romantic'
	},
	{
    name: 'Amsterdam',
    country: 'Netherlands',
    airport: 'AMS',
    cat_type: 'art'
	},
	{
    name: 'Barcelon',
    country: 'Spain',
    airport: 'BCN',
    cat_type: 'art'
	},
	{
    name: 'Madrit',
    country: 'Spain',
    airport: 'MAD',
    cat_type: 'art'
	},
	{
    name: 'Paris',
    country: 'France',
    airport: 'CDG',
    cat_type: 'art'
	},
	{
    name: 'Vienn',
    country: 'Austria',
    airport: 'VIE',
    cat_type: 'history'
	},
	{
    name: 'Tbilisi',
    country: 'Georgia',
    airport: 'TBS',
    cat_type: 'history'
	},
	{
    name: 'New York',
    country: 'USA',
    airport: 'EWR',
    cat_type: 'history'
	},
	{
    name: 'Los Angeles',
    country: 'USA',
    airport: 'LAX',
    cat_type: 'history'
	},
	{
    name: 'Vienn',
    country: 'Austria',
    airport: 'VIE',
    cat_type: 'music_perfomance'
	},
	{
    name: 'Tbilisi',
    country: 'Georgia',
    airport: 'TBS',
    cat_type: 'music_perfomance'
	},
	{
    name: 'New York',
    country: 'USA',
    airport: 'EWR',
    cat_type: 'music_perfomance'
	},
	{
    name: 'Los Angeles',
    country: 'USA',
    airport: 'LAX',
    cat_type: 'music'
	},
	{
    name: 'Vienn',
    country: 'Austria',
    airport: 'VIE',
    cat_type: 'performances'
	},
	{
    name: 'Prague',
    country: 'Czechia',
    airport: 'PRG',
    cat_type: 'performances'
	},
	{
    name: 'Paris',
    country: 'France',
    airport: 'CDG',
    cat_type: 'performances'
	},
	{
    name: 'Lviv',
    country: 'Ukraine',
    airport: 'LWO',
    cat_type: 'performances'
	},
	{
    name: 'Barcelona',
    country: 'Spain',
    airport: 'BCN',
    cat_type: 'food'
	},
	{
    name: 'Tbilisi',
    country: 'Georgia',
    airport: 'TBS',
    cat_type: 'food'
	},
	{
    name: 'Korfu',
    country: 'Greece',
    airport: 'CFU',
    cat_type: 'food'
	},
	{
    name: 'Larnaca',
    country: 'Cyprus',
    airport: 'LCA',
    cat_type: 'food'
	},
	{
    name: 'Barcelona',
    country: 'Spain',
    airport: 'BCN',
    cat_type: 'amusement'
	},
	{
    name: 'Billund',
    country: 'Dennmark',
    airport: 'BLL',
    cat_type: 'amusement'
	},
	{
    name: 'Verona',
    country: 'Italy',
    airport: 'VRN',
    cat_type: 'amusement'
	},
	{
    name: 'Paris',
    country: 'France',
    airport: 'CDG',
    cat_type: 'amusement'
	},
	{
    name: 'Barcelona',
    country: 'Spain',
    airport: 'BCN',
    cat_type: 'animations'
	},
	{
    name: 'Korfu',
    country: 'Greece',
    airport: 'CFU',
    cat_type: 'animations'
	},
	{
    name: 'Larnaca',
    country: 'Cyprus',
    airport: 'LCA',
    cat_type: 'animations'
	},
	{
    name: 'Tenerife',
    country: 'Spain',
    airport: 'TFS',
    cat_type: 'water_sport'
	},
	{
    name: 'Antalya',
    country: 'Turkey',
    airport: 'AYT',
    cat_type: 'water_parks'
	},	
	{
    name: 'Mediolan',
    country: 'Italy',
    airport: 'MXP',
    cat_type: 'nursery'
	},
	{
    name: 'Mallorca',
    country: 'Spain',
    airport: 'PMI',
    cat_type: 'water_sports'
	},
	{
    name: 'Fuertaventura',
    country: 'Spain',
    airport: 'FUE',
    cat_type: 'water_sports'
	},
	{
    name: 'Tenerife',
    country: 'Spain',
    airport: 'TFS',
    cat_type: 'water_sports'
	},
	{
    name: 'Gran Canaria',
    country: 'Spain',
    airport: 'LPA',
    cat_type: 'water_sports'
	},
	{
    name: 'Mediolan',
    country: 'Italy',
    airport: 'MXP',
    cat_type: 'winter_sports'
	},
	{
    name: 'Salzburg',
    country: 'Austria',
    airport: 'SZG',
    cat_type: 'winter_sports'
	},
	{
    name: 'Verona',
    country: 'Italy',
    airport: 'VRN',
    cat_type: 'winter_sports'
	},	
	{
    name: 'Larnaca',
    country: 'Cyprus',
    airport: 'LCA',
    cat_type: 'solo'
	},
	{
    name: 'London',
    country: 'Great Britain',
    airport: 'LHR',
    cat_type: 'solo'
	},
	{
    name: 'Trondheim',
    country: 'Norway',
    airport: 'TRD',
    cat_type: 'trekking'
	},
	{
    name: 'Zurich',
    country: 'Switzerland',
    airport: 'ZHR',
    cat_type: 'trekking'
	},
	{
    name: 'Tbilisi',
    country: 'Georgia',
    airport: 'TBS',
    cat_type: 'trekking'
	},
	{
    name: 'Podgorica',
    country: 'Montenegro',
    airport: 'TGD',
    cat_type: 'trekking'
	}
]
Place.create!(places)

# u = User.create!(
# 	email: 'test@test.com',
# 	password: 'test123',
# )

# categories = Category.create([
# 	{ name: 'adventure', user: u }, 
# 	{ name: 'business', user: u },
# 	{ name: 'leisure', user: u },
# 	{ name: 'culture', user: u },
# 	{ name: 'family', user: u },
# 	{ name: 'sports', user: u }
# ])

# adventure = Category.where(name: 'adventure').first
# leisure = Category.where(name: 'leisure').first
# culture = Category.where(name: 'culture').first 
# family = Category.where(name: 'family').first
# sport = Category.where(name: 'sports').first

# adventure_sub = %w[ extreme safari sightseeing mountains gamble party]
# leisure_sub = %w[ sunbathing spa massage food sightseeing gamble party relax romantic ]
# culture_sub = %w[ art history music_perfomance ]
# family_sub = %w[ food amusement animations water_parks amusement nursery ]
# sport_sub  =  %w[ water_sports winter_sports solo trekking ]

# adventure_sub.each do |cat_type|
# 	SubCategory.create!(
# 		name: cat_type,
# 		category: adventure,
# 		user: u
# 	)
# end

# leisure_sub.each do |cat_type|
# 	SubCategory.create!(
# 		name: cat_type,
# 		category: leisure,
# 		user: u
# 	)
# end

# culture_sub.each do |cat_type|
# 	SubCategory.create!(
# 		name: cat_type,
# 		category: culture,
# 		user: u
# 	)
# end

# family_sub.each do |cat_type|
# 	SubCategory.create!(
# 		name: cat_type,
# 		category: family,
# 		user: u
# 	)
# end

# sport_sub.each do |cat_type|
# 	SubCategory.create!(
# 		name: cat_type,
# 		category: sport,
# 		user: u
# 	)
# end