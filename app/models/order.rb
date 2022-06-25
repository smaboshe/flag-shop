class Order < ApplicationRecord
  belongs_to :flag

  has_many :payments
  accepts_nested_attributes_for :payments

  validates :email, presence: true
  validates :name, presence: true
  validates :phone, presence: true
  validates :shipping_address, presence: true

  def process_payment(payment)
    if Flipper.enabled?(:process_payment_with_square)
      process_payment_with_square(payment)
    elsif Flipper.enabled?(:process_payment_with_stripe)
      process_payment_with_stripe(payment)
    else
      process_payment_with_flutterwave(payment)
    end
  end

  private

  def process_payment_with_flutterwave(payment)
    payment_proccessor = Flutterwave.new
    payload = {
      "card_number" => payment.card_number,
      "cvv" => payment.card_cvv,
      "expiry_month" => payment.card_expiry_month,
      "expiry_year" => payment.card_expiry_year,
      "currency" => payment.currency,
      "amount" => payment.amount.to_s,
      "email" => email,
      "fullname" => payment.card_name,
      "tx_ref" => "MC-3243e-if-12",
      "redirect_url" => "https://webhook.site/399"
    }
    charge_card = Card.new(payment_proccessor)

    # binding.pry

    response = charge_card.initiate_charge(payload)

    Rails.logger.info self
    Rails.logger.info payment
    Rails.logger.info payment_proccessor
    Rails.logger.info payload
    Rails.logger.info response
  end

  def process_payment_with_stripe(payment)
  end

  def process_payment_with_square(payment)
  end
end
