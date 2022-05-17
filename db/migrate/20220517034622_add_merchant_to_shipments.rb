class AddMerchantToShipments < ActiveRecord::Migration[7.0]
  def change
    add_reference :shipments, :merchant, null: false, foreign_key: true
  end
end
