class ChangeDataTypeForItems < ActiveRecord::Migration[7.0]
  change_table :items do |t|
    t.change :unit_price, :decimal, {precision: 8, scale: 2}
  end
end
