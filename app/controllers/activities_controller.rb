class ActivitiesController < ApplicationController

  def index
    acty_array = Activity.all
    @activities = acty_array.sample(4)
  end


end

