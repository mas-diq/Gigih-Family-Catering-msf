class MenusController < ApplicationController
  before_action :current_menu, only: [:show, :edit, :update, :destroy]

  def index
    @menus = Menu.all
  end

  def show
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.create(menu_params)
    redirect_to menu_path(@menu)
  end

  def edit
  end

  def update
    @menu.update(menu_params)
    redirect_to menu_path(@menu)
  end

  def destroy
    @menu.destroy
    redirect_to menus_path
  end

  private def menu_params
    params.require(:menu).permit(:name, :price, :description)
  end

  def current_menu
    @menu = Menu.find(params[:id])
  end
end
