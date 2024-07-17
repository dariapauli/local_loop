class EventsController < ApplicationController

  def index
    @events = Event.all
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {event: event})
      }
    end
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
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event), notice: 'Offer was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.find_by(event: @event, user: current_user)
  end

  private

  def event_params
    params[:event][:age_group] = params[:event][:age_group].to_i
    params.require(:event).permit(:name, :description, :address, :age_group, :date, :time, :category, :price)
  end
end
