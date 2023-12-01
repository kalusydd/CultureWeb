class ChatroomsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    # redirect_to chatroom_path(@chatroom)
  end

  def create
    # @chatroom = Chatroom.new
    # @event = Event.find(params[:event_id])
    # @chatroom.event = @event
    # @chatroom.save
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:event_id)
  end
end
