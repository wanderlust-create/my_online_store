require 'rails_helper'

RSpec.describe 'Merchant Index Items', type: :feature do
  let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }
  let!(:item1) { merchant1.items.create!(name: 'Red', description: 'red lama', unit_price: 34.29) }
  let!(:item2) { merchant1.items.create!(name: 'Brown', description: 'brown lama', unit_price: 31.55) }
  let!(:item3) { merchant1.items.create!(name: 'Orange', description: 'orange lama', unit_price: 37.00) }

  context 'merchant index will show a list with attributes of all merchant items'
  it 'will show item index' do
    visit merchant_items_path(merchant1.id)

    within('#item-0') do
      expect(page).to have_content(item1.name)
      expect(page).to have_content(item1.description)
      expect(page).to have_content(item1.unit_price)
      expect(page).to have_link("Update #{item1.name}")
      expect(page).to have_link("Delete #{item1.name}")
    end

    within('#item-1') do
      expect(page).to have_content(item2.name)
      expect(page).to have_content(item2.description)
      expect(page).to have_content(item2.unit_price)
      expect(page).to have_link("Update #{item2.name}")
      expect(page).to have_link("Delete #{item2.name}")
    end

    within('#item-2') do
      expect(page).to have_content(item3.name)
      expect(page).to have_content(item3.description)
      expect(page).to have_content(item3.unit_price)
      expect(page).to have_link("Update #{item3.name}")
      expect(page).to have_link("Delete #{item3.name}")
    end
  end
end
