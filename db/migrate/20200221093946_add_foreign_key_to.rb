class AddForeignKeyTo < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :reviews, :friends
  end
end
