class SalesController < ApplicationController

  def index
    @sales = current_user.sales;
    @items = Item.all
    @user = current_user
  end

  def new
    @sale = Sale.new
    @user = current_user
    @item = Item.new
  end

  def create
    # creation of sale instance
    @sale = Sale.new
    @item = Item.create(
      :name => params[:name],
      :description => params[:description],
      :price => params[:price],
      :sku => params[:sku],
      :file => params[:file]
    )
    @sale.seller = current_user
    @sale.items << @item
    @sale.save
    redirect_to('/users/index')
  end

  def show
    #@sale = Sale.all
    @sale = Sale.find(params[:id])
  end

  def edit
  end

  def update
    # puts "update"
    if session[:user_id] != [:seller_id]
      @user = current_user
      sale = Sale.find(params[:id])
      sale.buyer = @user
      sale.save
      redirect_to ('/users')
      flash[:success] = "Congratulations you purchased this item!"

    else
      redirect_to (user_sales_path)
      flash[:notice] = "You can't buy your own item!!!"
    end
  end

  def destroy
  end

  private

  def item_params

  end
end
