class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @booking.event = Event.find(params[:event_id])
    @booking.user = current_user
    if @booking.event.attendees.to_i < @booking.event.capacity.to_i
      @booking.save
      redirect_to @booking.event, notice: "Woohoo! You're going to #{@booking.event.title} on #{@booking.event.date}!" # change redirect to dashboard
    else
      redirect_to @booking.event, alert: "Sorry! This event is fully booked 🥲"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:event_id)
  end
end
