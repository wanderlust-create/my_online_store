class Shipment < ApplicationRecord
  belongs_to :merchant
  has_many :shipment_items, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
  validates :zip_code, presence: true
end
