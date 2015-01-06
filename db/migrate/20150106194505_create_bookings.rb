class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :customer_name
      t.string :plate_number
      t.datetime :time_start
      t.datetime :time_end

      t.timestamps
    end
  end
end
