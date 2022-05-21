class Merchant::MerchantsController < ApplicationController

  def create
    new_merchant = Merchant.new(merchant_params)
    if new_merchant.save
      redirect_to merchant_items_path(new_merchant)
    else
      redirect_to new_merchant_path
      flash[:alret] = new_merchant.errors.full_messages.to_sentence
    end
  end

  def index
    @merchants = Merchant.all
  end

  private
  
  def merchant_params
    params.permit(:name)
  end
end
