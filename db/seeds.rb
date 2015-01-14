puts "Creating listings"

sellers = 10.times.map { Seller.create(name: Faker::Company.name) }
locations = 10.times.map { 
  Location.create({
    name: Faker::Address.street_name + " parking",
    address: Faker::Address.street_address,
    city: "Chicago",
  })
}
10.times { |i| Listing.create(
  {
    seller: sellers[i],
    location: locations[i],
    available: 2+rand(8),
    active: true,
    min_parking_hours: 1 + rand(3),
    price_per_hour: 1 + rand(24)
  }
) }

# update last record to create limited resource location
l = Listing.last
s = l.seller
s.name = 'Choice Parking'
s.save
l.min_parking_hours = 3
l.available = 1
l.save

puts "Creating bookings"
Booking.create([
  {
    customer_name: Faker::Name.name,
    plate_number: Faker::Number.number(7),
    time_start: DateTime.now.utc.beginning_of_day + 18.hours,
    time_end: DateTime.now.utc.beginning_of_day + 22.hours,
    listing: l,
    price_per_hour: l.price_per_hour,
  }
])
