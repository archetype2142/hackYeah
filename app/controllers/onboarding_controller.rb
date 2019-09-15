class OnboardingController < ApplicationController
	before_action :authenticate_user!
	
	def index; end
	
	def create
		keep = params['user'].select { |name, ans| ans == "1" }.keys
		remove = Category::CATEGORIES.keys - keep
		
		keep.each do |category|
			Category.create!(
				name: category, 
				user: current_user,
				image_url: Category::CATEGORIES[category.to_s]
			)
		end

		redirect_to sub_categories_path
	end

	private
	
	def permitted_params
    params.require(:user).permit(
      Category::CATEGORIES.map(&:to_s)
    )
  end
end
