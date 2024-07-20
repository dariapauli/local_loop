class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    # DISCLAIMER Steam_from should not be used here as "from" is used for all the channels. we just require one here.
    # This is why we are using stram_for. PLEASE AVOID ANY CHANGE!!
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
