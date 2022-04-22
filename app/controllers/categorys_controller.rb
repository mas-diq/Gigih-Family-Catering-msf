class CategorysController < ApplicationController
  before_action :current_category, only: [:show, :edit, :update, :destroy]

  def index
    @categorys = category.all
  end

  def show
  end

  def new
    @category = category.new
  end

  def create
    @category = category.create(category_params)
    redirect_to category_path(@category)
  end

  def edit
  end

  def update
    @category.update(category_params)
    redirect_to category_path(@category)
  end

  def destroy
    @category.destroy
    redirect_to categorys_path
  end

  private def category_params
    params.require(:category).permit(:name)
  end

  def current_category
    @category = category.find(params[:id])
  end
end
