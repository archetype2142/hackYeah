class Category < ApplicationRecord
	CATEGORIES ||= %w[ adventure business leisure culture family sports ]

	has_many :sub_categories, dependent: :destroy
	belongs_to :user
end