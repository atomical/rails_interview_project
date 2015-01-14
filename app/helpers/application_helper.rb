module ApplicationHelper

  def booking_duration_in_hours(booking)
    ((booking.time_end - booking.time_start) / 3600).to_i
  end
end
