class SubMenusController < ApplicationController
  def show
    @sub_menu = SubMenu.find(params[:id])
  end
end
