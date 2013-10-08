class CreateGamings < ActiveRecord::Migration
  def change
    create_table :gamings do |t|
      t.integer :score
      t.string :urlgame

      t.timestamps
    end
  end
end
