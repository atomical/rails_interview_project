puts "Creating listings"
5.times { Listing.create(
  {
    seller_name: Faker::Company.name,
    location_name: Faker::Address.street_name + " parking",
    address: Faker::Address.street_address,
    city: "Chicago",
    available: 2+rand(8),
    active: true,
    min_parking_hours: 1 + rand(3),
    price_per_hour: 1 + rand(24)
  }
) }

l = Listing.last
l.seller_name = "Choice Parking"
l.min_parking_hours = 3
l.save

puts "Creating bookings"
tstart = Faker::Time.forward(23, :day)
tend = tstart + (3 + rand(3)).hours
Booking.create([
  {
    customer_name: Faker::Name.name,
    plate_number: Faker::Number.number(7),
    time_start: tstart,
    time_end: tend,
    listing_id: l.id
  }
])
