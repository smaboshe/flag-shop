class Flag < ApplicationRecord
  # Length
  validates :country_code, length: { is: 3 }

  # Number
  validates :price, numericality: true

  # Presences
  validates :country_code, presence: true
  validates :country_code, presence: true
  validates :country, presence: true
  validates :currency_code, presence: true
  validates :image_url, presence: true
  validates :price, presence: true
end
