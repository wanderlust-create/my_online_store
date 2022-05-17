require 'rails_helper'

RSpec.describe 'Shipment Show page', type: :feature do

  describe 'Show Shipment attributes' do
    let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }
    let!(:shipment1) {merchant1.shipments.create!(name: "Dancing Dora", address: "123 Main St.", state: "NY", zip_code: 12345 )}
    let!(:item1) { merchant1.items.create!(name: 'Red', description: 'red lama', unit_price: 34.29) }
    let!(:item2) { merchant1.items.create!(name: 'Brown', description: 'brown lama', unit_price: 31.55) }
    let!(:item3) { merchant1.items.create!(name: 'Orange', description: 'orange lama', unit_price: 37.00) }
    before :each do
      ShipmentItem.create!(shipment_id: shipment1.id, item_id: item1.id)
      ShipmentItem.create!(shipment_id: shipment1.id, item_id: item2.id)
      ShipmentItem.create!(shipment_id: shipment1.id, item_id: item3.id)
    end

    it 'will list the shipment attribites' do

      visit merchant_shipment_path(merchant1, shipment1)

      expect(page).to have_content(shipment1.name)
      expect(page).to have_content(shipment1.address)
      expect(page).to have_content(shipment1.state)
      expect(page).to have_content(shipment1.zip_code)

      within('#item-0') do
        expect(page).to have_content(item1.name)
        expect(page).to have_content(item1.unit_price)
      end

      within('#item-1') do
        expect(page).to have_content(item2.name)
        expect(page).to have_content(item2.unit_price)
      end

      within('#item-2') do
        expect(page).to have_content(item3.name)
        expect(page).to have_content(item3.unit_price)
      end
    end
  end
end
