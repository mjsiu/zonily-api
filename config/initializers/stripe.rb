Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => 'pk_test_TYooMQauvdEDq54NiTphI7jx'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
