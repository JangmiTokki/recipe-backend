class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image
      t.string :source_name
      t.string :source_url
      t.integer :servings
      t.float :calories

      t.timestamps
    end
  end
end
