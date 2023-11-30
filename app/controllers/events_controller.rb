class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.new
    # @chatroom = Chatroom.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      @chatroom = Chatroom.new
      @event.category_ids = params[:event][:category_ids]
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :time, :category, :description, :venue_name,
                                  :venue_address, :capacity, :price, :photo, category_ids: [])
    # params.require(:event_category).permit(:category)
  end
end
