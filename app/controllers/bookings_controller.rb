class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.event = Event.find(params[:event_id])
    if @booking.event.attendees < @booking.event.capacity
      @booking.save!
      redirect_to @booking.event, notice: "Woohoo! You're going to #{@booking.event.title} on #{@booking.event.date}!" # change redirect to dashboard
    else
      "Sorry! This event is fully booked 🥲"
    end
  end
end
