class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :timeinstore
      t.date :date

      t.timestamps
    end
  end
end
