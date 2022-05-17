class Merchant::ShipmentsController < ApplicationController
  def create
    @merchant = Merchant.find(params[:merchant_id])
    new_shipment = Shipment.new(shipment_params)
    if new_shipment.save
      redirect_to merchant_shipments_path(@merchant.id)
    else
      redirect_to new_merchant_shipment_path(@merchant.id)
      flash[:alret] = new_shipment.errors.full_messages.to_sentence
    end
  end
  def index
    @merchant = Merchant.find(params[:merchant_id])
  end
  def new
    @merchant = Merchant.find(params[:merchant_id])
  end

  def show
    @merchant = Merchant.find(params[:merchant_id])
    @shipment = @merchant.shipments.find(params[:id])
    @shipment_items = ShipmentItem.where(shipment_id: params[:id])
  end

  private

  def shipment_params
    params.permit(:name, :address, :state, :zip_code, :merchant_id)
  end
end
