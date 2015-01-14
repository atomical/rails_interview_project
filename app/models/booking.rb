class Booking < ActiveRecord::Base
  belongs_to :listing

  validates :time_start, presence: true
  validates :time_end, presence: true
  # validates :customer_name, length: { minimum: 4 }

  
end
