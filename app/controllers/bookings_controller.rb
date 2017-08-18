class BookingsController < ApplicationController
before_action :set_activity, only: [:new, :create]
  # def new
  #   @booking = Booking.new
  #   @pricings = @activity.pricings
  #   # @user_id #-- to modify
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.booking_start = DateTime.strptime(params[:booking][:booking_start], "%d/%m/%Y")
    @booking.status = "Pending confirmation"
    if user_signed_in?
      @booking.user_id = current_user.id
      if @booking.save
        # A modifier (rediriger vers la page profil quand elle sera créée)
        redirect_to activities_dashboard_path
      else
        redirect_to activity_path(@activity)
      end
    else
      redirect_to new_user_registration_path
    end

  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.status == "Pending confirmation"
      @booking.status = "Validated"
      @booking.save
    else
      @booking.status = "Pending confirmation"
      @booking.save
    end
    redirect_to activities_dashboard_supplyer_path
  end

private

  def booking_params
    params.require(:booking).permit(:pricing_id, :booking_start, :booking_end, :price, :nb_persons)
  end
  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

end
