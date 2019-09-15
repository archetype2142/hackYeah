class PlacesAllocatorJob < ApplicationJob
	require 'open-uri'
  queue_as :default

  def perform(user)
		user.places.delete(user.places)
		api_key = "13628318-e608f39b6f362547ed4762d8a"
		
  	all_categories(user).each do |category|
  		places = Place.where(cat_type: category) 
  		if places.count > 1
  			places.each do |place|
  				url = "https://pixabay.com/api/?key=#{api_key}&q=#{place.name}&image_type=photo&category=travel";
  				response = open(url).read
  				response = JSON.parse(response)
  				if response['totalHits'] != 0
  					puts response['hits'][1]
						place.update!(image_url: response['hits'][0]['webformatURL'].to_str) 
					end

  				user.places << place
  			end
  		else
  			url = "https://pixabay.com/api/?key=#{api_key}&q=#{places.name}&image_type=photo&category=travel";
  			response = open(url).read

				places.update(image_url: JSON.parse(response)['hits'][1]['webformatURL'])
  			user.places << places
  		end
  			
  	end
  end

  def all_categories(user)
  	categories = user.categories.pluck(:name)
  	sub_categories = user.sub_categories.pluck(:name)
  	(categories + sub_categories).uniq
  end
end
