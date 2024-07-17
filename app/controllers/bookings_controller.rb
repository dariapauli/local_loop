class BookingsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @booking = @event.bookings.new
  end

  def create
    @event = Event.find(params[:event_id])
    @booking = @event.bookings.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :event_id)
  end
end
