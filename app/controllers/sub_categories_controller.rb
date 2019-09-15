class SubCategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
  	@sub_categories ||= current_user.categories.pluck(:name).map do |x|
  	  "SubCategory::#{x.upcase}".constantize.keys
  	end.flatten.uniq

  	@all_cats = all_cats
  end

  def create
  	keep = params['sub_category'].select { |name, ans| ans == "1" }.keys
		remove = all_categories.uniq - keep
		
		keep.each do |category|
			SubCategory.create(
				name: category, 
				user: current_user,
				img_url: all_cats["#{category}"]
			)
		end
		PlacesAllocatorJob.new(current_user).perform_now
    redirect_to "https://lot-of-dreams.herokuapp.com/?userId=#{current_user.id}&accessToken=#{current_user.access_token}"
  end

  def permitted_params
  	params.require(:sub_category).permit(
  		all_categories.map(&:to_s).uniq
  	)
  end

  def all_cats
		[ 
			SubCategory::ADVENTURE,
	  	SubCategory::LEISURE,
	  	SubCategory::CULTURE,
	  	SubCategory::FAMILY,
	  	SubCategory::SPORTS 
	  ].inject(&:merge)
	end

  def all_categories
  	SubCategory::ADVENTURE.keys +
  	SubCategory::LEISURE.keys +
  	SubCategory::CULTURE.keys +
  	SubCategory::FAMILY.keys +
  	SubCategory::SPORTS.keys
  end
end
