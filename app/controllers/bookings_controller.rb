class BookingsController < ApplicationController
before_action :set_activity, only: [:new, :create]
  def new
    @booking = Booking.new
    @pricings = @activity.pricings
    # @user_id #-- to modify
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "Pending confirmation"
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

private

  def booking_params
    params.require(:booking).permit(:pricing_id, :booking_start, :booking_end, :price, :nb_persons)
  end
  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

end
