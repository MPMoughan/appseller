class SalesController < ApplicationController

  def index
    @sales = current_user.sales;
  end

  def create
    @sale = Sales.new
    @item = Item.new
    @sale.seller = current_user
    @sale.items << @item
  end

  def show
  end

  def new
    @sale = Sales.new
  end

  def edit
  end

  def destroy
  end
end
