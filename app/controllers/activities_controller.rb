class ActivitiesController < ApplicationController
before_action :set_activity, only: [:show]
  def index
    @activities = Activity.all
    # @activities =  Activity.where("category = ?", params[:category])
  end

  def new
    @activity = Activity.new
  end
  def show
  end

  private
  def set_activity
    @activity = Activity.find(params[:id])
  end

end

