class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :occasion
      t.string :category
      t.text :instructions
      t.string :glass
      t.string :img_url

      t.timestamps
    end
  end
end
