class AddPricePerHourToBooking < ActiveRecord::Migration
  def change
    change_table :bookings do |t|
      t.decimal :price_per_hour
    end
  end
end
