class Payment < ApplicationRecord
  belongs_to :order

  validates :amount, numericality: true

  validates :amount, presence: true
  validates :card_expiry_month, presence: true
  validates :card_expiry_year, presence: true
  validates :card_name, presence: true
  validates :card_number, presence: true
  validates :currency, presence: true
  validates :medium, presence: true
  validates :processor, presence: true
  validates :status, presence: true
end
