class Shipment < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
  validates :zip_code, presence: true, numericality: true
end
