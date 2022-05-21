class Merchant < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :shipments, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
