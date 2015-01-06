class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :seller_name
      t.string :location_name
      t.string :address
      t.string :city
      t.integer :available
      t.boolean :active
      t.integer :min_parking_hours
      t.decimal :price_per_hour

      t.timestamps
    end

    add_reference :bookings, :listing, index: true
  end
end
