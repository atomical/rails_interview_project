class Seller < ActiveRecord::Base
  has_many :locations
  
  validates :name, length: { minimum: 4 }
end
