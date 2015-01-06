class Listing < ActiveRecord::Base
  has_many :bookings
end
