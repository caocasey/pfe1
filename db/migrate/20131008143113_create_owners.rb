class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :facebookappid
      t.string :description
      t.string :facebookappkey

      t.timestamps
    end
  end
end
