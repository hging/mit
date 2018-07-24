class ResearchController < ApplicationController
  def highlight_result
    per = params[:per] || 10
    page = params[:page] || 1
    @result = Activity.highlights.active.ransack({:content_matches => "%#{params[:q]}%"}).result.where(:published => true).page(page).per(per)
  end
  def archive_result
    per = params[:per] || 10
    page = params[:page] || 1
    @result = Activity.archive.active.ransack({:content_matches => "%#{params[:q]}%"}).result.where(:published => true).page(page).per(per)
  end
end
