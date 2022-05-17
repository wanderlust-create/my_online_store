class CreateShipmentItems < ActiveRecord::Migration[7.0]
  def change
    create_table :shipment_items do |t|
      t.references :shipment, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
