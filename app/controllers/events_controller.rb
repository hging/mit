class EventsController < ApplicationController
  def index
    @result = Activity.active
  end
  def show
    @activity = Activity.active.find(params[:id])
  end

  def calendar
    activities = Activity.where(:activity_type => [2, 3, 6]).active

    @activities = activities&.map {|new| {:title => new.title, :start => new.start&.strftime("%Y-%m-%d %H:%M:%S") || Time.now.strftime("%Y-%m-%d %H:%M:%S"), :end => new.end&.strftime("%Y-%m-%d %H:%M:%S") || Time.now.strftime("%Y-%m-%d %H:%M:%S"), :url => event_url(new)}}.to_json
  end

  def nice_seminar_series
    @result = Activity.nice_seminar_series.active
  end

  def workshops
    @result = Activity.workshops.active
  end

  def news
    @result = Activity.news.active
  end
end
