class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :text
      t.integer :promotion, default: 0
      t.string :img_url
    end
  end
end
