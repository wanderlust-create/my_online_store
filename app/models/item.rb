class Item < ApplicationRecord
  belongs_to :merchant
  has_many :shipment_items, dependent: :destroy

  validates :name, :description, :unit_price, presence: true
  validates :unit_price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
  
  def display_price
    '%.2f' % (self.unit_price)
  end
end
