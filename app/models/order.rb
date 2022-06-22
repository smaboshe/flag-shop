class Order < ApplicationRecord
  validates :email, presence: true
  validates :name, presence: true
  validates :phone, presence: true
  validates :shipping_address, presence: true

  belongs_to :flag

  has_many :payments
  accepts_nested_attributes_for :payments
end
