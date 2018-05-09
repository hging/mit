class EventsController < ApplicationController
  def index
    @result = Activity.where(:published => true)
  end
  def show
    @activity = Activity.where(:published => true).find(params[:id])
  end

  def calendar
    activities = Activity.activity.where(:published => true)

    @activities = activities&.map {|new| {:title => new.title, :start => new.start.strftime("%Y-%m-%d"), :end => new.end.strftime("%Y-%m-%d"), :url => event_url(new)}}.to_json
  end

  def nice_seminar_series
    @result = Activity.nice_seminar_series.where(:published => true)
  end

  def workshops
    @result = Activity.workshops.where(:published => true)
  end

  def news
    @result = Activity.news.where(:published => true)
  end
end
