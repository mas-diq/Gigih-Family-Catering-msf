class CategoryMenusController < ApplicationController
  before_action :current_category_menu, only: [:show, :edit, :update, :destroy]

  def index
    @category_menus = CategoryMenu.all
  end

  def show
  end

  def new
    @category_menu = CategoryMenu.new
  end

  def create
    @category_menu = CategoryMenu.create(category_menu_params)
    redirect_to category_menu_path(@category_menu)
  end

  def edit
  end

  def update
    @category_menu.update(category_menu_params)
    redirect_to category_menu_path(@category_menu)
  end

  def destroy
    @category_menu.destroy
    redirect_to category_menus_path
  end

  private def category_menu_params
    params.require(:category_menu).permit(:menu_id, :category_id)
  end

  def current_category_menu
    @category_menu = CategoryMenu.find(params[:id])
  end
end
