class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
