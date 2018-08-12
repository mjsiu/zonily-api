class UserController < ApplicationController
  def newsletter
    UserMailer.welcome_email(email: params[:email]).deliver
    render status: 200
  end

  def contact_message
    UserMailer.contact_message(name: params[:name], email: params[:email], message: params[:message]).deliver
    render status: 200
  end
end
