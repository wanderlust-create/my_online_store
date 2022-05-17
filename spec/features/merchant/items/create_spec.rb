require 'rails_helper'
RSpec.describe 'New Item' do
  let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }

  describe 'merchant create new item' do
    it 'has a form for a Merchant to add an item to inventory' do
      visit merchant_items_path(merchant1)

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

    describe 'if new item information is incomplete' do
      it 'an error message will be returned if attribute information is incomplete' do
        visit merchant_items_path(merchant1)

        click_link 'Create New Item'
        expect(current_path).to eq(new_merchant_item_path(merchant1))

        fill_in 'Name', with: 'Stress Ball'
        fill_in 'Unit price', with: 5.99
        click_button 'Submit'

        ball = Item.last

        expect(current_path).to eq(new_merchant_item_path(merchant1.id))
        expect(page).to have_content("Description can't be blank")
        expect(page).to_not have_content('Stress Ball')
        expect(page).to_not have_content('$5.99')
      end
    end
  end
end
