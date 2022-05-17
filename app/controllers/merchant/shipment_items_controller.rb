class Merchant::ShipmentItemsController < ApplicationController
  def destroy
    merchant = Merchant.find(params[:merchant_id])
    ShipmentItem.find(params[:id]).destroy
    redirect_to merchant_shipments_path(merchant.id)
  end

end
