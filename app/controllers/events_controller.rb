class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
    if params[:query].present?
      @events = Event.search_by_title_and_description(params[:query])
      # sql_subquery = "title ILIKE :query OR description ILIKE :query"
      # @events = @events.where(sql_subquery, query: "%#{params[:query]}%")
    end
    if params[:location].present?
      # @events = @events.where("venue_address ILIKE ?", "%#{params[:location]}%")
      @events = @events.near(params[:location], 5)
    end
  end

  def show
    @booking = Booking.new
    @marker = [{ lat: @event.latitude, lng: @event.longitude }]
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
