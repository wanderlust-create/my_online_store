# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }
let!(:shipment1) {merchant1.shipments.create!(name: 'Dancing Dora', address: '123 Main St.', state: 'NY', zip_code: 12345) }
let!(:item1) { merchant1.items.create!(name: 'Red', description: 'red lama', unit_price: 34.29) }
let!(:item2) { merchant1.items.create!(name: 'Brown', description: 'brown lama', unit_price: 31.55) }
let!(:item3) { merchant1.items.create!(name: 'Orange', description: 'orange lama', unit_price: 37.00) }
let!(:item4) { merchant1.items.create!(name: 'Banana', description: 'banana rama', unit_price: 12.33) }

let!(:merchant2) { Merchant.create!(name: 'Happy Lama') }
let!(:shipment2) {merchant1.shipments.create!(name: 'Ruth Bowen', address: '123 Main St.', state: 'NY', zip_code: 12345) }
let!(:shipment3) {merchant1.shipments.create!(name: 'Juan Fernandez', address: '123 Main St.', state: 'NY', zip_code: 12345) }
let!(:item5) { merchant1.items.create!(name: 'One', description: 'one lama', unit_price: 1.33) }
let!(:item6) { merchant1.items.create!(name: 'Two', description: 'two lama', unit_price: 2.45) }
let!(:item7) { merchant1.items.create!(name: 'Three', description: 'three lama', unit_price: 3.44) }
let!(:item8) { merchant1.items.create!(name: 'Four', description: 'four rama', unit_price: 1.77) }
let!(:item9) { merchant1.items.create!(name: 'Five', description: 'five rama', unit_price: 12.10) }
let!(:item10) { merchant1.items.create!(name: 'Six', description: 'six rama', unit_price: 19.56) }



  ShipmentItem.create!(shipment_id: shipment1.id, item_id: item1.id)
  ShipmentItem.create!(shipment_id: shipment1.id, item_id: item2.id)
  ShipmentItem.create!(shipment_id: shipment1.id, item_id: item3.id)
  ShipmentItem.create!(shipment_id: shipment2.id, item_id: item5.id)
  ShipmentItem.create!(shipment_id: shipment2.id, item_id: item6.id)
  ShipmentItem.create!(shipment_id: shipment3.id, item_id: item6.id)
  ShipmentItem.create!(shipment_id: shipment3.id, item_id: item7.id)
  ShipmentItem.create!(shipment_id: shipment3.id, item_id: item8.id)
