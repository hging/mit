class HardwaresController < ApplicationController
  def show
    @result = Hardware.find params[:id]
  end
end
