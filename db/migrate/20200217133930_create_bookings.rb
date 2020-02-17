class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :booking_price
      t.references :friend, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
