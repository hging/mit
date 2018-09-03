class ResourceController < ApplicationController
  def hardware
    @result = Hardware.active
  end

  def software
    @result = Software.active
  end
end
