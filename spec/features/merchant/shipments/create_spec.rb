require 'rails_helper'
RSpec.describe 'New Shipment' do
  let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }

  describe 'merchant create new Shipment' do
    it 'has a form for a Merchant to add an Shipment' do
      visit merchant_shipments_path(merchant1)

      click_link 'Create New Shipment'
      expect(current_path).to eq(new_merchant_shipment_path(merchant1))

      fill_in 'Name', with: 'Stressed Salmon'
      fill_in 'Address', with: '56 Main Hoops'
      fill_in 'State', with: 'MN'
      fill_in 'Zip code', with: 12_344
      click_button 'Submit'

      shipment1 = Shipment.last

      expect(current_path).to eq(merchant_shipments_path(merchant1))
      expect(page).to have_content(shipment1.name)
      expect(page).to have_content(shipment1.address)
      expect(page).to have_content(shipment1.state)
      expect(page).to have_content(shipment1.zip_code)
    end

    describe 'if new Shipment information is incomplete' do
      it 'an error message will be returned if attribute information is incomplete' do
        visit merchant_shipments_path(merchant1)

        click_link 'Create New Shipment'
        expect(current_path).to eq(new_merchant_shipment_path(merchant1))

        fill_in 'Name', with: 'Leaping Lemon'
        fill_in 'Zip code', with: 12_322
        click_button 'Submit'

        shipment2 = Shipment.last

        expect(current_path).to eq(new_merchant_shipment_path(merchant1.id))
        expect(page).to have_content("Address can't be blank and State can't be blank")
        expect(page).to_not have_content('Leaping Lemon')
        expect(page).to_not have_content(12_322)
      end
    end
  end
end
