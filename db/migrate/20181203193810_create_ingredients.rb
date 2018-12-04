class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :ing_type
      t.text :description

      t.timestamps
    end
  end
end
