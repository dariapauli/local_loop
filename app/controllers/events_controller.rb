class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def participation
    @event = Event.find(params[:id])
    @user = current_user
    @booking = Booking.new(user: @user, event: @event)
    if @booking.save
      redirect_to event_path(@event)
    else
      redirect_to event_path(@event), flash: {error: "Cannot save the booking!"}
    end
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to event_path(@event)
  end

  private

  def event_params
    params.require(:event).permit(:name, :address, :date, :time, :age_group)
  end
end
