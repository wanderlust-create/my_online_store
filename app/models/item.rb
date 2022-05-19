class Item < ApplicationRecord
  belongs_to :merchant
  has_many :shipment_items, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :unit_price, presence: true, numericality: true
end
