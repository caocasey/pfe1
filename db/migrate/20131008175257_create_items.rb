class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :subtitle
      t.string :describe
      t.string :state
      t.string :reference

      t.timestamps
    end
  end
end
