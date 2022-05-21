class Merchant::MerchantsController < ApplicationController
  def create
    new_merchant = Merchant.create!(merchant_params)
    redirect_to merchant_items_path(new_merchant)
  end

  def index
    @merchants = Merchant.all
  end

  private

  def merchant_params
    params.permit(:name)
  end
end
