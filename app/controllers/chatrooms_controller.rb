class ChatroomsController < ApplicationController

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:receiver, :sender)
  end

end
