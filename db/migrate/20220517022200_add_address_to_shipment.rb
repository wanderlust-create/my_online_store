class AddAddressToShipment < ActiveRecord::Migration[7.0]
  def change
    add_column :shipments, :address, :string
  end
end
