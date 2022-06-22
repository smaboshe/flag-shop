class Payment < ApplicationRecord
  belongs_to :order

  validates :amount, numericality: true

  validates :processor, presence: true
  validates :status, presence: true
  validates :medium, presence: true
  validates :currency, presence: true
  validates :card_number, presence: true
  validates :card_name, presence: true
  validates :card_expiry, presence: true
  validates :amount, presence: true
end
