class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :intro
      t.string :ingredients
      t.string :instructions
      t.string :author_id

      t.timestamps
    end
  end
end
