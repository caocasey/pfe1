class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.integer :size
      t.string :uid
      t.string :brand
      t.string :color

      t.timestamps
    end
  end
end
