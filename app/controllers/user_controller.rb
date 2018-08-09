class UserController < ApplicationController
  def newsletter
    UserMailer.welcome_email(params[:email]).deliver
  end
end
