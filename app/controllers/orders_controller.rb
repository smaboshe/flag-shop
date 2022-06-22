class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
    @payment = @order.payments.build
  end

  def create
    order = Order.create(order_params)
    flash[:notice] = "Successfully bought a flag of Zambia"
    redirect_to order
  end

  def show
  end

  private

  def order_params
    params.require(:order).permit(
      :name,
      :email,
      :phone,
      :shipping_address,
      payment_attributes: [
        :card_name,
        :card_number,
        :card_expiry,
        :card_cvv
      ]
    )
  end
end
