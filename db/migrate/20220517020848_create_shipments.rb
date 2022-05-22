class CreateShipments < ActiveRecord::Migration[7.0]
  def change
    create_table :shipments do |t|
      t.string :name
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
