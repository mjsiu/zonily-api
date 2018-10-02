class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email.downcase!

    if @user.save
      render json: {}, status: 200
    else
      render json: {}, status: 500
    end
  end

  def newsletter
    Newsletter.create(email: params[:email], active: true)
    UserMailer.welcome_email(email: params[:email]).deliver
    render status: 200
  end

  def contact_message
    UserMailer.contact_message(name: params[:name],
                               email: params[:email],
                               message: params[:message]).deliver
    render status: 200
  end

  private

  def user_params
   params.require(:user).permit(:firstname,
                                :lastname,
                                :email,
                                :password,
                                :password_confirmation)
  end
end
