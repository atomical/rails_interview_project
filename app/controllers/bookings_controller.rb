class BookingsController < ApplicationController

  before_filter :find_available_listings, only: [:create, :check]
  
  def create
    if @available_listings.count == 0
      render json: { booking: {available: false} } and return
    end
    
    booking = Booking.new(time_start: @time_start, time_end: @time_end)
    booking.listing = @available_listings.first
    booking.price_per_hour = booking.listing.price_per_hour # listing price may change

    if booking.valid?
      booking.save
      redirect_to booking_path(booking)
    else
      render json: { booking: { available: false, errors: booking.errors } }  
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def check
    if @available_listings.count == 0
      render json: { booking: {available: false} } and return
    end
    price = @available_listings.first.price_per_hour * @hours
    render json: { booking: { available: true, price: price } }
  end

  private

    def find_available_listings
      @time_start         = parse_date_time("#{params['start-date']} #{params['start-time']}")
      @time_end           = parse_date_time("#{params['end-date']} #{params['end-time']}")
      @hours              = ((@time_end - @time_start)*24).to_i
      @available_listings = Listing.find_best_price_by_hours_requested(@hours)
    end

    def parse_date_time( date_time )
      DateTime.strptime(date_time,'%m/%d/%Y %H:%M')
    end
end
