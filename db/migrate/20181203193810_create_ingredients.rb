class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :alcoholic
      t.boolean :mixer
      t.text :description

      t.timestamps
    end
  end
end
