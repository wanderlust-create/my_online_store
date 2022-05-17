class Item < ApplicationRecord
  belongs_to :merchant
  belongs_to :shipment

  validates :name, presence: true
  validates :description, presence: true
  validates :unit_price, presence: true, numericality: true
end
