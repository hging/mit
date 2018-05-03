class ResearchController < ApplicationController
  def index
    per = params[:per] || 10
    page = params[:page] || 1
    @result = Activity.ransack({:content_matches => "%#{params[:q]}%"}).result.where(:published => true).page(page).per(per)
  end
end
