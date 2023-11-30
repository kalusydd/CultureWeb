class ChatroomsController < ApplicationController
  before_action :authenticate_user!

  # def create
  #   @chatroom.new(chatroom_params)
  #   @chatroom.save
  # end

  def show
    @event = Event.find(params[:id])
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    # redirect_to chatroom_path(@chatroom)
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:event_id)
  end
end
