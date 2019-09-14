class AddSubCategoriesToCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :sub_categories, :category, foreign_key: true
  end
end
