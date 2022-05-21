require 'rails_helper'

RSpec.describe 'Create New Merchant', type: :feature do

  it 'will create new merchant' do
    visit '/'

    click_link "Create New Merchant Account"
    fill_in 'Name', with: 'Darling Donkey'
    click_button 'Submit'

    new_merchant = Merchant.last
    expect(current_path).to eq(merchant_items_path(new_merchant))
    expect(page).to have_content(new_merchant.name)
  end
end
