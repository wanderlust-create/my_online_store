# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
merchant1 = Merchant.create!(name: 'Happy Lama')
shipment1 = merchant1.shipments.create!(name: 'Dancing Dora', address: '123 Main St.', state: 'NY', zip_code: 30_187)
item1 = merchant1.items.create!(name: 'Red Hat', description: 'red lama hat', unit_price: 34.29)
item2 = merchant1.items.create!(name: 'Brown Coat', description: 'brown lama coat', unit_price: 31.55)
item3 = merchant1.items.create!(name: 'Orange Shirt', description: 'orange lama shirt', unit_price: 37.00)
item4 = merchant1.items.create!(name: 'Banana Rama', description: 'banana rama hooper', unit_price: 12.33)

merchant2 = Merchant.create!(name: 'Sad Sloth')
shipment2 = merchant2.shipments.create!(name: 'Cyndee Valdez', address: '123 Main St.', state: 'NY', zip_code: 127_345)
shipment3 = merchant2.shipments.create!(name: 'Juan Fernandez', address: '123 Main St.', state: 'NY', zip_code: 20_187)
item5 = merchant2.items.create!(name: 'Mopey Monkey Chair', description: 'brown monkey Chair', unit_price: 1.33)
item6 = merchant2.items.create!(name: 'Leaping Lizzard Shirt', description: 'green lizzard shirt', unit_price: 2.45)
item7 = merchant2.items.create!(name: 'Dancing Octopus Shoes', description: 'purple octopus shoes', unit_price: 3.44)
item8 = merchant2.items.create!(name: 'Crazy Moth Rings', description: 'rainbow moth rings', unit_price: 1.77)
item9 = merchant2.items.create!(name: 'Cuddly Puppy Socks', description: 'blue puppy socks', unit_price: 12.10)
item10 = merchant2.items.create!(name: 'Krazy Kitten leggings', description: 'pink kitten leggings', unit_price: 19.56)

ShipmentItem.create!(shipment_id: shipment1.id, item_id: item1.id)
ShipmentItem.create!(shipment_id: shipment1.id, item_id: item2.id)
ShipmentItem.create!(shipment_id: shipment1.id, item_id: item3.id)
ShipmentItem.create!(shipment_id: shipment2.id, item_id: item5.id)
ShipmentItem.create!(shipment_id: shipment2.id, item_id: item6.id)
ShipmentItem.create!(shipment_id: shipment3.id, item_id: item6.id)
ShipmentItem.create!(shipment_id: shipment3.id, item_id: item7.id)
ShipmentItem.create!(shipment_id: shipment3.id, item_id: item8.id)
