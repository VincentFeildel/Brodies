class ActivitiesController < ApplicationController
before_action :set_activity, only: [:show]
  def home
    @activities = Activity.all
  end

  def index
    # @activities = Activity.all
    params[:category] == "" ? @activities = Activity.all : @activities =  Activity.where("category = ?", params[:category])
    # raise
    @activities = @activities.near(params[:city], 100) if params[:city] != ""
    @hash = Gmaps4rails.build_markers(@activities) do |activity, marker|
      marker.lat activity.latitude
      marker.lng activity.longitude
    end
# marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
  end

  def new
    @activity = Activity.new
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

end
