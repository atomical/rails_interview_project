class RefactorSellerLocationFieldsOnListings < ActiveRecord::Migration
  def change

    # change_table :listings do |t|
    #   t.remove :seller_name
    #   t.remove :location_name
    #   t.remove :address
    # end

    add_reference :listings, :location, index: true
    add_reference :listings, :seller, index: true

    Listing.all.each do |l|
      l.seller   = Seller.create!(name: l.seller_name)
      l.location = Location.create!(name: l.location_name, address: l.address, city: l.city)
      l.save!
    end

  end
end
