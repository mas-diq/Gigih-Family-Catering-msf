class OrderDetailsController < ApplicationController
  before_action :current_order_detail, only: [:show, :edit, :update, :destroy]

  def index
    @order_details = OrderDetail.all
  end

  def show
  end

  def new
    @order_detail = OrderDetail.new
  end

  def create
    @order_detail = OrderDetail.create(order_detail_params)
    redirect_to order_detail_path(@order_detail)
  end

  def edit
  end

  def update
    @order_detail.update(order_detail_params)
    redirect_to order_detail_path(@order_detail)
  end

  def destroy
    @order_detail.destroy
    redirect_to order_details_path
  end

  private def order_detail_params
    params.require(:order_details).permit(:order_id, :menu_id, :price, :quantity)
  end

  def current_order_detail
    @order_detail = OrderDetail.find(params[:id])
  end
end
