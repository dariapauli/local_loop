class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    # events that the current_user is the organizer of
    @my_created_events = current_user.events
    # events that the current_user is participating in
    @my_participations = current_user.bookings.includes(:event).map(&:event).uniq
  end

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
