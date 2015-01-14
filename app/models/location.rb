class Location < ActiveRecord::Base

  validates :name, length: { minimum: 4 }
  validates :address, length: { minimum: 4 }
  validates :city, length: { minimum: 4 }

end
