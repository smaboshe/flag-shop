class Flag < ApplicationRecord
  validates :country_code, length: {is: 3}

  validates :price, numericality: true

  validates :country_code, presence: true
  validates :country_code, presence: true
  validates :country, presence: true
  validates :currency_code, presence: true
  validates :image_url, presence: true
  validates :price, presence: true

  validates :image_url, url: true

  validates :country_code, uniqueness: true
  validates :country, uniqueness: true
  validates :image_url, uniqueness: true

  has_many :orders
end
