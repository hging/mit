class EventsController < ApplicationController
  def index
    @result = Activity.where(:activity_type => [0, 1]).active
  end
  def show
    @activity = Activity.active.find(params[:id])
  end

  def calendar
    activities = Activity.events.active

    @activities = activities&.map {|new| {:title => new.title, :start => new.start&.strftime("%Y-%m-%d")||Time.now.strftime("%Y-%m-%d"), :end => new.end&.strftime("%Y-%m-%d")||Time.now.strftime("%Y-%m-%d"), :url => event_url(new)}}.to_json
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
