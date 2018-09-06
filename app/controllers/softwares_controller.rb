class SoftwaresController < ApplicationController
  def show
    @result = Software.find params[:id]
  end
end
