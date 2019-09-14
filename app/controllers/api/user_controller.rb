class Api::UserController < Api::ApplicationController
  def show
  	render json: User.find(params[:id]), only: [:id, :access_token]
  end
end 