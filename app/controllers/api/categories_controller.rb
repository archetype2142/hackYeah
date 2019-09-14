class Api::CategoriesController < Api::ApplicationController
  def show
  	user = User.find(params[:id])
  	render json: (user.sub_categories.pluck(:name) + user.categories.pluck(:name)).uniq
  end
end 