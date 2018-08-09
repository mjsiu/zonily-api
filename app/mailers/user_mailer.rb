class UserMailer < ApplicationMailer
  default from: 'support@zonily.com'

 def welcome_email(email)
   @email = email
   @url  = 'http://zonily.com/'
   mail(to: email, subject: 'Welcome to Zonily!')
 end
end
