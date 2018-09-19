class ChargesController < ApplicationController
  def create
  # @amount = 2500
  #
  # customer = Stripe::Customer.create(
  #   :email => params[:stripeEmail],
  #   :source  => params[:stripeToken]
  # )
  #
  # charge = Stripe::Charge.create(
  #   :customer    => customer.id,
  #   :amount      => @amount,
  #   :description => 'Rails Stripe customer',
  #   :currency    => 'usd'
  # )
  #
  # rescue Stripe::CardError => e
  #   flash[:error] = e.message
  #   redirect_to new_charge_path
  render status: 200
  end
end
