require 'rails_helper'

RSpec.describe 'Merchant Destroy Item', type: :feature do
  let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }
  let!(:item1) { merchant1.items.create!(name: 'Red', description: 'red lama', unit_price: 34.29) }
  let!(:item2) { merchant1.items.create!(name: 'Brown', description: 'brown lama', unit_price: 31.55) }
  let!(:item3) { merchant1.items.create!(name: 'Orange', description: 'orange lama', unit_price: 37.00) }

  context 'there is a link on the Merchant Item index page to delete an item'
  it 'will delete an item and redirect to the merchant index page where you can no longer see the items' do
    visit merchant_items_path(merchant1.id)

    within('#item-0') do
      expect(page).to have_content(item1.name)
      expect(page).to have_content(item1.description)
      expect(page).to have_content(item1.unit_price)
      expect(page).to have_link("Delete #{item1.name}")
    end

    within('#item-1') do
      expect(page).to have_content(item2.name)
      expect(page).to have_content(item2.description)
      expect(page).to have_content(item2.unit_price)
      expect(page).to have_link("Delete #{item2.name}")
    end

    within('#item-2') do
      expect(page).to have_content(item3.name)
      expect(page).to have_content(item3.description)
      expect(page).to have_content(item3.unit_price)
      expect(page).to have_link("Delete #{item3.name}")
    end

    click_link "Delete #{item2.name}"

    expect(current_path).to eq(merchant_items_path(merchant1.id))

    expect(page).to have_content('Your item was deleted')
    expect(page).to_not have_content(item2.name)

    within('#item-1') do
      expect(page).to have_content(item3.name)
      expect(page).to have_content(item3.description)
      expect(page).to have_content(item3.unit_price)
      expect(page).to have_link("Delete #{item3.name}")
    end
  end
end
