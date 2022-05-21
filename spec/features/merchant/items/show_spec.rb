require 'rails_helper'

RSpec.describe 'Item Show Page', type: :feature do
  let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }
  let!(:item1) { merchant1.items.create!(name: 'Orange', description: 'orange lama', unit_price: 37.00) }

  it 'will show an items attributes' do
    visit merchant_item_path(merchant1, item1)
    expect(page).to have_content(item1.name)
    expect(page).to have_content(item1.description)
    expect(page).to have_content(item1.unit_price)
  end
end
