class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :friendship_category
      t.integer :price_p_hour
      t.text :description
      t.string :location
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
