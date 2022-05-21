require 'rails_helper'

RSpec.describe 'Merchant Index', type: :feature do
  let!(:merchant1) { Merchant.create!(name: 'Happy Lama') }
  let!(:merchant2) { Merchant.create!(name: 'Sad Sloth') }
  let!(:merchant3) { Merchant.create!(name: 'Leaping Lizzard') }

  context 'merchant index will show a list of all merchants'
  it 'will show merchant index' do
    visit merchants_path

    within('#merchant-0') do
      expect(page).to have_content(merchant1.name)
    end

    within('#merchant-1') do
      expect(page).to have_content(merchant2.name)
    end

    within('#merchant-2') do
      expect(page).to have_content(merchant3.name)
    end
  end
end
