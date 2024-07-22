class EventsController < ApplicationController
  before_action :set_event, only: %i[participation show edit update destroy]

  def index

    if params[:search][:postcode].present? # && params[:search][:city].present?
      @events = Event.where('address ILIKE ? OR address ILIKE ?', "%#{params[:search][:postcode]}%", "%#{params[:search][:city]}%")
      if params[:category].present?
        @events = @events.with_category(params[:category])
      end

      if params[:age_group].present?
        @events = @events.with_age_group(params[:age_group])
      end
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
    elsif params[:postcode].blank?
      flash[:alert] = "Postcode is required"
      redirect_to search_events_path and return
    end

    # if params[:price].present?
    #   @events = Event.with_price(selected_price)
    # end

    # selected_price = params[:price]

    # if selected_price == "Free"
    #   @events = Event.where(price: 0.00)
    # else
    #   price = selected_price.to_f
    #   @events = Event.where("price > ?", price)
    # end
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
    @event.user = current_user
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
