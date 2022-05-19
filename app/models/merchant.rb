class Merchant < ApplicationRecord
  has_many :items
  has_many :shipments
  
  validates :name, presence: true, uniqueness: true
end
