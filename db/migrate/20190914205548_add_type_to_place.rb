class AddTypeToPlace < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :cat_type, :string
  end
end
