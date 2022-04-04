class Flag < ApplicationRecord
  validates :country_code, presence: true
  validates :country, presence: true
  validates :currency_code, presence: true
  validates :image_url, presence: true
  validates :price, presence: true
  validates :price, numericality: true
end
