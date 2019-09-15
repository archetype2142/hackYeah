class Api::PlacesController < Api::ApplicationController
  def show
  	user = User.find(params[:id])
  	render json: user.places, only: [:name, :country, :airport, :image_url]
  end
end 