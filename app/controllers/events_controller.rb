class EventsController < ApplicationController
  before_action :set_event, only: %i[participation show edit update destroy]

  def index

    postcode = params[:search][:postcode]
    city = params[:search][:city]

    if postcode.present?
      # Validate that postcode is exactly 5 digits
      if postcode.match?(/\A\d{5}\z/)
        if city.present?
          @events = Event.where("address ILIKE ? AND address ~ ?", "%#{city}%", "\\m#{postcode}\\M")
        else
          @events = Event.where("address ~ ?", "\\m#{postcode}\\M")
        end

        if params[:category].present?
          @events = @events.with_category(params[:category])
        end

        if params[:age_group].present?
          @events = @events.with_age_group(params[:age_group])
        end

        if params[:price].present?
          if params[:price] == "0"
            @events = @events.with_price(params[:price])
          else
            prices = params[:price].split("..").map {|number| number.to_f}
            @events = @events.where(price: prices[0]..prices[1])
          end
        end

        @price_ranges = Event.price_ranges(10)

        @markers = @events.geocoded.map do |event|
          {
            lat: event.latitude,
            lng: event.longitude,
            info_window_html: render_to_string(partial: "info_window", locals: { event: event }, formats: :html )
          }
        end

        respond_to do |format|
          format.html
          format.json
        end

      else
        flash[:alert] = "Postcode must be 5 digits"
        redirect_to search_events_path and return
      end
    else
      flash[:alert] = "Postcode is required"
      redirect_to search_events_path and return
    end
  end

  def new
    @event = Event.new
  end

  def participation
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
    @event.organizer = current_user
    if @event.save
      redirect_to event_path(@event), notice: 'Offer was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  def show
    @booking = Booking.find_by(event: @event, user: current_user)
    @bookings = @event.bookings
    @participants = @event.users
    @comments = @event.comments
    @comment = Comment.new
    @profile = current_user.profile
    @organizer = @event.organizer
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params[:event][:age_group] = params[:event][:age_group].to_i
    params.require(:event).permit(:name, :description, :address, :age_group, :date, :time, :category, :price, :photo)
  end

end
