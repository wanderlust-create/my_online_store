class Merchant::ShipmentItemsController < ApplicationController
  def create
    shipment = Shipment.find(params[:shipment_id])
    merchant = Merchant.find(params[:merchant_id])
    new_shipment_item = ShipmentItem.create!(shipment_item_params)
    redirect_to merchant_shipment_path(merchant, shipment)
  end

  def destroy
    merchant = Merchant.find(params[:merchant_id])
    shipment = Shipment.find(params[:shipment_id])
    ShipmentItem.find(params[:shipment_item_id]).destroy
    redirect_to merchant_shipment_path(merchant, shipment)
    flash[:alret] = 'Item removed'
  end

  private

  def shipment_item_params
    params.permit(:shipment_id, :item_id)
  end
end
