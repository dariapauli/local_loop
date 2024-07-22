class ChatroomsController < ApplicationController

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render :show, status: :unprocesable_entity
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:receiver_id, :sender_id)
  end

end
