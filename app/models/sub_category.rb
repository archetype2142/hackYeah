class SubCategory < ApplicationRecord

	ADVENTURE ||= { 
    extreme: "https://get.pxhere.com/photo/adventure-recreation-ice-frozen-climbing-extreme-sport-climb-ice-wall-mountaineering-sports-icefall-ski-touring-extreme-sports-ski-mountaineering-outdoor-recreation-ice-climbers-ice-climbing-ice-screw-geological-phenomenon-mountain-guide-telemark-skiing-645727.jpg",
    safari: "https://get.pxhere.com/photo/adventure-wildlife-africa-mammal-fauna-savanna-elephant-grassland-safari-kenya-indian-elephant-african-elephant-tsavo-elephants-and-mammoths-1127569.jpg",
    sightseeing: "https://get.pxhere.com/photo/prague-space-city-building-historic-center-road-church-czech-republic-architecture-europe-old-building-center-capital-cityscape-culture-sky-town-urban-area-landmark-town-square-plaza-street-tree-metropolis-neighbourhood-medieval-architecture-facade-cloud-history-palace-house-downtown-1444455.jpg",
    mountains: "https://get.pxhere.com/photo/adventure-alone-dawn-daylight-dusk-evening-field-fog-grass-grassland-hike-hiking-hill-landscape-man-meadow-mountain-mountains-person-scenic-standing-sun-sunrise-sunset-travel-mountainous-landforms-sky-wilderness-morning-tree-highland-sunlight-ridge-fell-mountain-range-national-park-mount-scenery-horizon-rock-ecoregion-escarpment-cloud-plateau-valley-1418557.jpg",
    gamble: "https://get.pxhere.com/photo/game-play-building-money-machine-vegas-casino-gambling-luck-risk-fortune-slot-jackpot-win-chance-759684.jpg",
    party: "https://get.pxhere.com/photo/music-people-crowd-celebration-concert-band-audience-live-youth-cheering-show-nightlife-club-musician-cheer-perform-performance-art-festival-stage-fun-happy-performance-party-arms-event-entertainment-spectators-disco-fans-excitement-performing-arts-rock-concert-discotheque-musical-theatre-applauding-727825.jpg" 
  }

	LEISURE ||= {
    sunbathing: "https://get.pxhere.com/photo/attractive-beach-beautiful-bikini-blurred-background-body-daylight-enjoyment-female-fun-girl-hot-island-landscape-legs-leisure-ocean-outdoors-person-pose-recreation-relaxation-sand-sea-seascape-seashore-sexy-shore-sitting-smiling-summer-sun-sunbathing-sunglasses-sunset-swimsuit-travel-vacation-water-waves-white-woman-photograph-human-hair-color-beauty-swimwear-vacation-eyewear-blond-photography-model-photo-shoot-sunlight-vision-care-sun-tanning-long-hair-sky-health-beauty-brown-hair-smile-supermodel-glasses-1418560.jpg",
    spa: "https://get.pxhere.com/photo/flower-food-relax-rest-baking-relaxing-relaxation-spa-carving-massage-recovery-wellness-flavor-physio-recover-physiotherapy-764476.jpg",
    massage: "https://get.pxhere.com/photo/woman-leg-relax-muscle-mouth-chest-relaxing-infant-spa-massage-wellness-982409.jpg",
    food: "https://get.pxhere.com/photo/beef-bread-bun-burger-calories-cheese-cheeseburger-close-up-cooking-delicious-food-fries-hamburger-lettuce-meal-meat-photography-sandwich-sesame-seeds-snack-tasty-wooden-tray-fast-food-french-fries-junk-food-brunch-dish-breakfast-finger-food-full-breakfast-side-dish-appetizer-buffalo-burger-breakfast-sandwich-american-food-fast-food-restaurant-veggie-burger-slider-1418586.jpg",
    sightseeing: "https://get.pxhere.com/photo/architecture-people-floor-building-museum-hall-public-transport-interior-design-metro-station-art-gallery-paintings-tourist-attraction-lobby-exhibition-art-gallery-shopping-mall-public-domain-images-973226.jpg",
    gamble: "https://get.pxhere.com/photo/game-play-building-money-machine-vegas-casino-gambling-luck-risk-fortune-slot-jackpot-win-chance-759684.jpg",
    party: "https://get.pxhere.com/photo/music-people-crowd-celebration-concert-band-audience-live-youth-cheering-show-nightlife-club-musician-cheer-perform-performance-art-festival-stage-fun-happy-performance-party-arms-event-entertainment-spectators-disco-fans-excitement-performing-arts-rock-concert-discotheque-musical-theatre-applauding-727825.jpg",
    relax: "",
    romantic: ""
  }

	CULTURE ||= { 
    art: "https://get.pxhere.com/photo/architecture-people-floor-building-museum-hall-public-transport-interior-design-metro-station-art-gallery-paintings-tourist-attraction-lobby-exhibition-art-gallery-shopping-mall-public-domain-images-973226.jpg",
    history: "https://get.pxhere.com/photo/map-vintage-compass-east-west-south-north-old-circle-clock-ancient-history-history-world-1418873.jpg",
    music_perfomance: "https://get.pxhere.com/photo/man-pedestrian-person-music-people-road-sport-street-photography-city-urban-skateboarding-crowd-male-guy-recreation-motion-dance-young-show-artist-fashion-exercise-black-monochrome-movement-lifestyle-fitness-teenager-dancer-posing-fun-pedestrians-sports-cool-infrastructure-performance-footwear-move-pose-freestyle-style-acrobat-active-funky-hip-breaking-hip-hop-break-dancing-breakdance-breakdancing-aerobics-b-boying-breakdancer-break-dancers-947012.jpg"
  }
	
  FAMILY ||= { 
    food: "https://get.pxhere.com/photo/adult-chef-cooking-dinner-drink-family-festival-food-friends-group-group-together-indoors-kitchen-kitchenware-lights-meal-people-restaurant-room-social-table-together-wear-wine-bottles-women-1558345.jpg",
    amusement: "https://get.pxhere.com/photo/adorable-adult-beautiful-children-cute-daylight-enjoyment-facial-expression-family-fun-girls-happiness-happy-hot-air-balloon-joy-leisure-lifestyle-man-outdoors-park-people-recreation-smile-smiling-1533331.jpg",
    animations: "https://www.careassistant24.pl/user/pages/04.blog/animator-dla-dzieci-radymno/x11722118_1896200943939242_5483894298756589912_o.jpg.pagespeed.ic.F9l0QmhhNR.webp",
    water_parks: "https://get.pxhere.com/photo/water-people-girl-sun-white-sport-play-ring-wet-cute-summer-recreation-pool-young-splash-swimming-pool-child-two-blue-playing-leisure-childhood-swimming-swimwear-laugh-activity-swimmer-cheerful-face-family-kids-fun-happy-happiness-sports-sunglasses-glasses-bright-little-funny-beauty-joy-rubber-water-sport-outdoor-recreation-924771.jpg",
    nursery: "https://get.pxhere.com/photo/play-youth-holiday-child-room-garden-clown-kids-kindergarten-class-animator-1388154.jpg" 
  }

	SPORTS ||= { 
    water_sports: "https://get.pxhere.com/photo/man-beach-water-ocean-people-sport-boat-wave-vacation-recreation-transport-vehicle-splash-holiday-extreme-sport-activity-sports-boating-ski-watercraft-motorsport-water-sport-jet-ski-outdoor-recreation-water-bike-jet-ski-rider-water-bike-rider-powerboating-personal-water-craft-666293.jpg",
    winter_sports: "https://get.pxhere.com/photo/man-outdoor-mountain-snow-cold-winter-white-sport-adventure-jump-recreation-motion-action-alpine-steep-freedom-extreme-snowboard-extreme-sport-powder-speed-skiing-lifestyle-leisure-activity-sports-equipment-winter-sport-freerider-tour-fun-sports-helmet-downhill-ski-snowboarding-fast-risk-challenge-excitement-ski-equipment-alpine-skiing-telemark-skiing-freestyle-skiing-ski-cross-nordic-combined-slalom-skiing-780562.jpg",
    solo: "https://get.pxhere.com/photo/water-recreation-pool-female-leisure-lane-swimming-swimmer-race-competition-sports-racing-water-sport-outdoor-recreation-breaststroke-individual-sports-freestyle-swimming-medley-swimming-1139580.jpg",
    trekking: "https://get.pxhere.com/photo/man-landscape-wilderness-walking-person-mountain-sky-hiking-adventure-backpack-view-mountain-range-summer-vacation-travel-trek-high-scenic-hike-freedom-altitude-extreme-sport-ridge-summit-climb-mountaineering-rocks-outdoors-mountains-alps-backpacking-exploration-pinnacle-viewpoint-landform-mountain-peaks-mountainous-landforms-1175886.jpg"
  }
	
  BUSINESS ||= {}

	belongs_to :category, optional: true
	belongs_to :user

  # validates :name, uniqueness: true
  def extreme
  	return if category.nil?
  	true if where(name: 'adventure').any?
  end

  def safari
  	return if category.nil?
  	true if where(name: 'business').any?
  end

  def sightseeing
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def mountains
  	return if category.nil?
  	true if categories.where(name: 'culture').any?
  end

  def gamble
  	return if category.nil?
  	true if categories.where(name: 'family').any?
  end

  def party
  	return if category.nil?
  	true if categories.where(name: 'sports').any?
  end

  def sunbathing
  	return if category.nil?
  	true if categories.where(name: 'adventure').any?
  end

  def spa
  	return if category.nil?
  	true if categories.where(name: 'business').any?
  end

  def massage
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def food
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def sightseeing
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def relax
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def romantic
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def art
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def history
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def music_perfomance
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def amusement
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def animations
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def water_parks
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def nursery
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def water_sports
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def winter_sports
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def solo
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end

  def trekking
  	return if category.nil?
  	true if categories.where(name: 'leisure').any?
  end
end
