class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :paymentmode
      t.integer :validata

      t.timestamps
    end
  end
end
