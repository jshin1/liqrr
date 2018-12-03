class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :occasion
      t.string :i1
      t.string :m1
      t.string :i2
      t.string :m2
      t.string :i3
      t.string :m3
      t.string :i4
      t.string :m4
      t.string :i5
      t.string :m5
      t.string :i6
      t.string :m6
      t.string :i7
      t.string :m7
      t.string :i8
      t.string :m8
      t.string :i9
      t.string :m9
      t.string :i10
      t.string :m10
      t.string :category
      t.text :instructions
      t.string :glass
      t.string :img_url

      t.timestamps
    end
  end
end
