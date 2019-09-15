class AddImageToSubCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :sub_categories, :img_url, :string
  end
end
