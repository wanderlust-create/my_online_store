class AddShipmentToItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :shipment, null: false, foreign_key: true
  end
end
