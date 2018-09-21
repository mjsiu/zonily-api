Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => 'pk_live_8ZBOxjftOcLbdSTnPTN8n5d9'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
