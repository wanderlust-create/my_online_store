require 'rails_helper'

RSpec.describe Shipment, type: :model do
  describe 'relationships' do
    it { should belong_to(:merchant) }
    it { should have_many(:shipment_items) }
  end
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:zip_code) }
  end
end
