class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
    @order.payments.build
  end

  def create
    @order = Order.create(order_params)
    payment = @order.payments.last
    payment.currency = "NGN"
    payment.amount = "10"
    payment.medium = "card"
    payment.processor = "flutterwave"
    payment.status = "pending"
    @order.flag = Flag.last

    @order.process_payment(payment)

    flash[:notice] = "Successfully bought a flag of Zambia"
    redirect_to @order
  end

  def show
  end

  private

  def order_params
    params.require(:order).permit(
      :email,
      :name,
      :phone,
      :shipping_address,
      payments_attributes: [
        :card_name,
        :card_number,
        :card_expiry_month,
        :card_expiry_year,
        :card_cvv
      ]
    )
  end
end
