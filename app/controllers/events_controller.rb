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
  end

  def search
    @events = Event.all

    if params[:street].present?
      street_name, street_number = parse_street(params[:street])
      @events = @events.where('street_name ILIKE ? AND street_number = ?', "%#{street_name}%", street_number)
    end

    if params[:city].present?
      postcode, city_name = parse_city(params[:city])
      @events = @events.where('postcode = ? AND city_name ILIKE ?', postcode, "%#{city_name}%")
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :address, :age_group, :date, :time, :category, :price)
  end

  def parse_street(street)
    parts = street.split
    street_number = parts.pop.to_i
    street_name = parts.join(' ')
    [street_name, street_number]
  end

  def parse_city(city)
    parts = city.split
    postcode = parts.shift.to_i
    city_name = parts.join(' ')
    [postcode, city_name]
  end
end
