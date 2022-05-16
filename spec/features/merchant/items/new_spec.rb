require 'rails_helper'
RSpec.describe 'New Item' do
  describe 'merchant create new item' do
    before :each do
      Merchant.destroy_all
    end
    it 'has a form for a Merchant to add an item to inventory' do
      merchant1 = Merchant.create!(name: 'Happy Lama')
      visit merchant_items_path(merchant1.id)

      click_link 'Create New Item'
      expect(current_path).to eq(new_merchant_item_path(merchant1))

      fill_in 'Name', with: 'Stress Ball'
      fill_in 'Description', with: 'Colourful ball that pops'
      fill_in 'Unit price', with: 5.99
      click_button 'Submit'

      ball = Item.last

      expect(current_path).to eq(merchant_items_path(merchant1))
      expect(page).to have_content(ball.name)
      expect(page).to have_content(ball.description)
      expect(page).to have_content(ball.unit_price)
    end
  end
end
