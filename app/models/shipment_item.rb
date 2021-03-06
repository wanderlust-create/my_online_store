class ShipmentItem < ApplicationRecord
  belongs_to :shipment
  belongs_to :item

  def find_name
    Item.find(item_id).name
  end

  def find_unit_price_display
    unit_price = Item.find(item_id).unit_price
    format('%.2f', unit_price)
  end
end
