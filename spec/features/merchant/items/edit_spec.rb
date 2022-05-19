require 'rails_helper'

RSpec.describe 'Merchant Items Edit Page', type: :feature do
  let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }
  let!(:item1) { merchant1.items.create!(name: 'Red', description: 'red lama', unit_price: 34.29) }
  let!(:item2) { merchant1.items.create!(name: 'Brown', description: 'brown lama', unit_price: 31.55) }
  let!(:item3) { merchant1.items.create!(name: 'Orange', description: 'orange lama', unit_price: 37.00) }

  context 'there is a link on the Merchant Item index page to update the item'
  it 'will update item attributes and redirect to the item index page after update' do
    visit merchant_items_path(merchant1.id)

    within('#item-1') do
      expect(page).to have_content('Brown')
      expect(page).to have_content('brown lama')
      expect(page).to have_content('$31.55')
    end

    click_link "Update #{item2.name}"

    expect(current_path).to eq(edit_merchant_item_path(merchant1, item2))

    fill_in 'Name', with: 'Purple'
    fill_in 'Description', with: 'purple lama'

    click_button 'Submit'

    expect(current_path).to eq(merchant_items_path(merchant1))

    expect(page).to have_content('Purple has been updated')
    expect(page).to have_content('Purple')
    expect(page).to have_content('purple lama')
    expect(page).to have_content('$31.55')
  end
end
