class ChatroomsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    #redirect_to event_chatroom_path(@chatroom)
  end

  def create
  end

  def update
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:event_id)
  end
end
