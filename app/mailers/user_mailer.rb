class UserMailer < ApplicationMailer
  default from: 'support@zonily.com'

 def welcome_email(email:)
   @email = email
   @url  = 'http://zonily.com/'
   mail(to: email, subject: 'Welcome to Zonily!')
 end

 def contact_message(name:, email:, message:)
   @name = name
   @message = message

   mail(to: email, subject: 'Thanks for contacting us')
 end

 def preorder_confirmation(name:, email:, playbook:)
   @name = name
   @message = message
   @playbook = playbook

   mail(to: email, subject: 'Zonily Playbook Purchase Confirmation')
 end
end
