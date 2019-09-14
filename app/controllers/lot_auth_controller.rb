class LotAuthController < ApplicationController
	before_action :authenticate_user!
	
	def index
	  redirect_to onboarding_index_path unless current_user.access_token.nil?
	end
	
	def create
		uri = URI("https://api.lot.com/flights-dev/v2/auth/token/get")
	  http = Net::HTTP.new(uri.host, uri.port)
	  http.use_ssl = true

	  request = Net::HTTP::Post.new(
	  	uri.path, 
	  	{
	  		'Content-Type': 'application/json', 
	  		'X-Api-Key': '9YFNNKS31u9gCFKPetPWdAAjEXnED0B3K18AeYgg'
	  	}
	  )

	  request.body = {'secret_key': '2przp49a52'}.to_json 
	  response = http.request(request)
	  body = JSON.parse(response.body)

	  current_user.update!(access_token: body['access_token'])

	  redirect_to onboarding_index_path
	end
end