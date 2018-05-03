class ActivitiesController < ApplicationController
  def index
    @result = Activity.news.where(:published => true)
  end
  def show
    @activity = Activity.find(params[:id])
  end
end
