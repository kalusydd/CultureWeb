class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
    if params[:query].present?
      @events = Event.search_by_title_and_description(params[:query])
    end
    if params[:location].present?
      @events = @events.near(params[:location], 5)
    end
    if params[:category_ids].present?
      @events = @events.joins(:categories).where(categories: { id: params[:category_ids] }).distinct
    end
    if params[:date].present?
      @events = @events.where(date: params[:date])
    end
    map_markers(@events)
  end

  def show
    @booking = Booking.new
    @marker = [{ lat: @event.latitude, lng: @event.longitude,
    info_window_event_html: render_to_string(partial: "info_window_event", locals: {event: @event}) }]
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

  def map_markers(events)
    @markers = events.geocoded.map do |event|
    {
      lat: event.latitude,
      lng: event.longitude,
      info_window_index_html: render_to_string(partial: "info_window_index", locals: {event: event})
    }
    end
  end

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
