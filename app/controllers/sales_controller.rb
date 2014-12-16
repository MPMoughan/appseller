class SalesController < ApplicationController

  def index
    @sales = current_user.sales;
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new
    @item = Item.create(
      :name => params[:name],
      :description => params[:description],
      :price => params[:price],
      :sku => params[:sku]
    )
    @sale.seller = current_user
    @sale.items << @item
    @sale.save
  end

  def show
    @sale = Sale.all
  end

  def edit
  end

  def destroy
  end

  private

  def item_params

  end
end
