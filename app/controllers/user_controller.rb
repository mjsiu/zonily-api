class UserController < ApplicationController
  def newsletter
    Newsletter.create(email: params[:email], active: true)
    UserMailer.welcome_email(email: params[:email]).deliver
    render status: 200
  end

  def contact_message
    UserMailer.contact_message(name: params[:name], email: params[:email], message: params[:message]).deliver
    render status: 200
  end
end
