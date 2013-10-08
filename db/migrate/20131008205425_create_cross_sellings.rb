class CreateCrossSellings < ActiveRecord::Migration
  def change
    create_table :cross_sellings do |t|
      t.integer :nbr_advice_item

      t.timestamps
    end
  end
end
