class SalesController < ApplicationController

  def index
    @sales = current_user.sales;
  end

  def create
    @sale = Sale.new
    @item = Item.new(item_params)
    @sale.seller = current_user
    @sale.items << @item
  end

  def show
  end

  def new
    @sale = Sale.new
  end

  def edit
  end

  def destroy
  end

  private

  def item_params
    params.permit(:items).permit(:name, :description, :price, :sku)
  end
end
