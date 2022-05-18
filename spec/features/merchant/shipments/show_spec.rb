require 'rails_helper'

RSpec.describe 'Shipment Show page', type: :feature do
  describe 'Show Shipment attributes' do
    let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }
    let!(:shipment1) do
      merchant1.shipments.create!(name: 'Dancing Dora', address: '123 Main St.', state: 'NY', zip_code: 12_345)
    end
    let!(:item1) { merchant1.items.create!(name: 'Red', description: 'red lama', unit_price: 34.29) }
    let!(:item2) { merchant1.items.create!(name: 'Brown', description: 'brown lama', unit_price: 31.55) }
    let!(:item3) { merchant1.items.create!(name: 'Orange', description: 'orange lama', unit_price: 37.00) }
    let!(:item4) { merchant1.items.create!(name: 'Banana', description: 'banana rama', unit_price: 12.33) }
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
        expect(page).to have_button("Remove #{item1.name} from this shipment")
      end

      within('#item-1') do
        expect(page).to have_content(item2.name)
        expect(page).to have_content(item2.unit_price)
        expect(page).to have_button("Remove #{item2.name} from this shipment")
      end

      within('#item-2') do
        expect(page).to have_content(item3.name)
        expect(page).to have_content(item3.unit_price)
        expect(page).to have_button("Remove #{item3.name} from this shipment")
      end
    end

    it 'will delete items from the shipment' do
      visit merchant_shipment_path(merchant1, shipment1)

      within('#item-1') do
        expect(page).to have_content(item2.name)
        expect(page).to have_content(item2.unit_price)
        expect(page).to have_button("Remove #{item2.name} from this shipment")
      end

      click_button "Remove #{item2.name} from this shipment"
      expect(current_path).to eq(merchant_shipment_path(merchant1, shipment1))
      expect(page).to have_content('Item removed')
    end

    it 'will add items to the shipment' do
      visit merchant_shipment_path(merchant1, shipment1)

      within('#item-1') do
        expect(page).to have_content(item2.name)
        expect(page).to have_content(item2.unit_price)
        expect(page).to have_button("Remove #{item2.name} from this shipment")
      end

      fill_in 'Item', with: item4.id
      click_button 'Add item to this shipment'

      expect(current_path).to eq(merchant_shipment_path(merchant1, shipment1))

      within('#item-3') do
        expect(page).to have_content(item4.name)
        expect(page).to have_content(item4.unit_price)
        expect(page).to have_button("Remove #{item4.name} from this shipment")
      end
    end

    it 'will return an error message if item does not exist' do
      visit merchant_shipment_path(merchant1, shipment1)

      fill_in 'Item', with: 12_345
      click_button 'Add item to this shipment'

      expect(current_path).to eq(merchant_shipment_path(merchant1, shipment1))
      expect(page).to have_content('Item must exist')
    end
  end
end
