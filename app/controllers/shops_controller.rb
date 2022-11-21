class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to @shop, notice: "Your shop has been saved successfully"
    else
      render :new , status: :unprocessable_entity
    end
  end

  def edit 
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])

    if @shop.update(shop_params)
      redirect_to @shop, notice: "Your shop has been updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def show
    @shop = Shop.find(params[:id])
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to root_path, notice: "Your shop has been deleted"
  end

  private

    def show_params
      params.require(:shop).permit(:name, :description,:contact_no, :place)
    end
end