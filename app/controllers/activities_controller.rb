class ActivitiesController < ApplicationController
before_action :set_activity, only: [:show]
  def home
    @activities = Activity.all
  end

  def index
    # @activities = Activity.all
    if params[:category] == nil
      @activities = Activity.all
    else
      @activities =  Activity.where("category = ?", params[:category])
      @activities_town =  Activity.where("city = ?", params[:city])
      # @activities = Activity.where.not(latitude: nil, longitude: nil)
      params[:category] == "" ? @activities = Activity.all : @activities =  Activity.where("category = ?", params[:category].capitalize)
      # raise
      @activities = @activities.near(params[:city], 100) if params[:city] != ""
    end
    @hash = Gmaps4rails.build_markers(@activities) do |activity, marker|
      marker.lat activity.latitude
      marker.lng activity.longitude
    end
# marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
  end

  def new
    @activity = Activity.new
  end

  def dashboard
    @dashboard_no_footer = true
    @user = current_user
    if @user.bookings.length == 0
      @bookings = nil
    else
      @bookings = @user.bookings
    end
  end

  def dashboard_supplyer
    @dashboard_no_footer = true
    @user = current_user
    @activity = @user.activities.first
    if @activity.bookings == ""
      @bookings = nil
    else
      @bookings = @activity.bookings
    end
  end

  def create
    @activity = Activity.new(activity_params)
    if user_signed_in?
      @activity.user_id = current_user.id
      if @activity.save
        # A modifier (rediriger vers la page profil quand elle sera créée)
        redirect_to activities_new_pricing_path(@activity)
        # redirect_to activity_path(@activity)
      else
        render :new
      end
    else
      redirect_to new_user_registration_path
    end
  end

  def new_pricing
    @pricing = Pricing.new
    @pricing.activity_id = @activity
    #TODO
  end

  def create_pricing
    #TODO
  end

  def show
      @pricings = @activity.pricings
      @booking = Booking.new
      @activities = [@activity]
      @hash = Gmaps4rails.build_markers(@activities) do |activity, marker|
        marker.lat activity.latitude
        marker.lng activity.longitude
      end
  end

  private
  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
      params.require(:activity).permit(:title, :description, :category, :capacity, :address, :city, :zip_code, :photo)
  end

end
