class CreateVistits < ActiveRecord::Migration
  def change
    create_table :vistits do |t|
      t.integer :timeinstore
      t.date :date

      t.timestamps
    end
  end
end
