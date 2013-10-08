class CreateEntertainements < ActiveRecord::Migration
  def change
    create_table :entertainements do |t|
      t.integer :waitingtime

      t.timestamps
    end
  end
end
