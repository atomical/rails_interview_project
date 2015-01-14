class Listing < ActiveRecord::Base
  has_many :bookings
  belongs_to :seller
  belongs_to :location
  
  def self.find_best_price_by_hours_requested(num)
    Listing.where(":hours_requested >= min_parking_hours",
      { :hours_requested => num }).order('price_per_hour asc')
  end
end
