class ChatroomsController < ApplicationController
  before_action :authenticate_user!

  def create
    @chatroom.new(chatroom_params)
    @chatroom.save
  end

  def show
    # @chatroom.event = Event.find(params[:event_id])
    @chatroom.save
    @message = Message.new
    redirect_to chatroom_path(@chatroom)
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:event_id)
  end
end
