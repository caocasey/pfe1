class CreateSocialData < ActiveRecord::Migration
  def change
    create_table :social_data do |t|
      t.string :facebookToken
      t.string :facebookSecret

      t.timestamps
    end
  end
end
