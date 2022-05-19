require 'rails_helper'

RSpec.describe 'Edit Shipment Edit Page', type: :feature do
  let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }
  let!(:shipment1) do
    merchant1.shipments.create!(name: 'Dancing Dora', address: '123 Main St.', state: 'NY', zip_code: 30_187)
  end

  context 'there is a link on the Shipment show page to update the shipment'
  it 'will update shipment attributes and redirect to the show page with the updated attributes' do
    visit merchant_shipment_path(merchant1, shipment1)

    expect(page).to have_content(shipment1.name)
    expect(page).to have_content(shipment1.address)
    expect(page).to have_content(shipment1.state)
    expect(page).to have_content(shipment1.zip_code)

    click_link 'Update shipment details'

    expect(current_path).to eq(edit_merchant_shipment_path(merchant1, shipment1))

    fill_in 'Address', with: '321 Not Main St'

    click_button 'Submit'

    expect(current_path).to eq(merchant_shipment_path(merchant1, shipment1))

    expect(page).to have_content('321 Not Main St')
    expect(page).to have_content("#{shipment1.name} has been updated")
  end
end
