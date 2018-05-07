class CalendarController < ApplicationController
  def index
    news = Activity.news.where(:published => true)
    @news = news&.map {|new| {:title => new.title, :start => new.start.strftime("%Y-%m-%d"), :end => new.end.strftime("%Y-%m-%d"), :url => activity_url(new)}}.to_json
  end
end
