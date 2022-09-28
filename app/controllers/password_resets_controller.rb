class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = user.find_by(email: params[:email])

    if @user.present?
      #send mail
      PasswordMailer.with(user: @user).reset.deliver_now
    end

    redirect_to root_path, notice: 'si existe el usuario, se enviará un correo electrónico'
  end
end
