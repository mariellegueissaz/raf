class AddColumnToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :friend_id, :integer
  end
end
