class Item < ApplicationRecord
  belongs_to :merchant
  has_many :shipment_items, dependent: :destroy

  validates :name, :description, :unit_price, presence: true
  validates :unit_price, presence: true, numericality: { greater_than: 0, less_than: 1_000_000 }

  def display_price
    format('%.2f', unit_price)
  end
end
