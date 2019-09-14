class SubCategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
  	@sub_categories ||= User.first.categories.pluck(:name).map do |x|
  	  "SubCategory::#{x.upcase}".constantize
  	end.flatten.uniq
  end

  def create
  	keep = permitted_params.select { |name, ans| ans == "1" }.keys
		remove = all_categories.uniq - keep
		
		keep.each do |category|
			SubCategory.create(name: category, user: current_user)
		end

		redirect_to sub_categories_path
  end

  def permitted_params
  	params.require(:sub_category).permit(
  		all_categories.uniq
  	)
  end

  def all_categories
  	SubCategory::ADVENTURE +
  	SubCategory::LEISURE +
  	SubCategory::CULTURE +
  	SubCategory::FAMILY +
  	SubCategory::SPORTS
  end
end
