class OnboardingController < ApplicationController
	before_action :authenticate_user!
	
	def index; end
	
	def create
		keep = permitted_params.select { |name, ans| ans == "1" }.keys
		remove = Category::CATEGORIES - keep
		
		keep.each do |category|
			Category.create!(name: category, user: current_user)
		end

		redirect_to sub_categories_path
	end

	private
	
	def permitted_params
    params.require(:user).permit(
      Category::CATEGORIES
    )
  end
end
