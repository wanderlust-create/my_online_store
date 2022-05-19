class Merchant::ItemsController < ApplicationController

  def create
    @merchant = Merchant.find(params[:merchant_id])
    new_item = Item.new(item_params)
    if new_item.save
      redirect_to merchant_items_path(@merchant.id)
    else
      redirect_to new_merchant_item_path(@merchant.id)
      flash[:alret] = new_item.errors.full_messages.to_sentence
    end
  end

  def destroy
    merchant = Merchant.find(params[:merchant_id])
    Item.find(params[:id]).destroy
    redirect_to merchant_items_path(merchant)
    flash[:alert] = 'Your item was deleted'
  end

  def edit
    @merchant = Merchant.find(params[:merchant_id])
    @item = @merchant.items.find(params[:id])
  end

  def index
    @merchant = Merchant.find(params[:merchant_id])
  end

  def new
    @merchant = Merchant.find(params[:merchant_id])
  end

  def show
    @merchant = Merchant.find(params[:merchant_id])
    @item = @merchant.items.find(params[:id])
  end

  def update
    merchant = Merchant.find(params[:merchant_id])
    item = merchant.items.find(params[:id])
    item.update(item_params)
    redirect_to merchant_item_path(merchant.id, item.id)
    flash.alert = "#{item.name} has been updated"
  end

  private

  def item_params
    params.permit(:name, :description, :unit_price, :merchant_id)
  end
end
