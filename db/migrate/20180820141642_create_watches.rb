class CreateWatches < ActiveRecord::Migration[5.2]
  def change
    create_table :watches do |t|
      t.string :photo
      t.date :production_year
      t.string :brand
      t.string :model
      t.integer :price_per_day
      t.string :gender
      t.text :description
      t.string :color
      t.string :mechanism
      t.string :case_material
      t.string :style

      t.timestamps
    end
  end
end
