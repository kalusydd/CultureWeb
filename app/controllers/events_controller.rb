class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
    if params[:query].present?
      @events = @events.where("title ILIKE ?", "%#{params[:query]}%")
    end
    if params[:location].present?
      @events = @events.where("venue_address ILIKE ?", "%#{params[:location]}%")
    end
    if params[:capacity.present?]
      case params[:capacity]
      when "<10"
        @events = @events.where(:capacity < 10)
      when "10-30"
        @events = @events.where(10 < :capacity && :capacity < 30)
      when ">30"
        @events = @events.where(:capacity > 30)
      end
    end
    if params[:price] == "FREE"
      @events = @events.where(price: "FREE")
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      @event.category_ids = params[:event][:category_ids]
      create_chatroom_event(@event)
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    if @event.user == current_user
      @event.destroy
      redirect_to root_path, status: :see_other
    else
      redirect_to _path(@event)
    end
  end

  private

  def create_chatroom_event(event)
    Chatroom.create(event: event)
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :date, :time, :category, :description, :venue_name,
                                  :venue_address, :capacity, :price, :photo, category_ids: [])
    # params.require(:event_category).permit(:category)
  end
end
