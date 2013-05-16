class SessionsController < ApplicationController

  def new

  end

  def create
    u = User.find_by_email(params[:email])
    if u.present? && u.authenticate(params[:password])
      session[:user_id] = u.id
      redirect_to u, notice: "You've successfully signed in!"
    else
      redirect_to new_user_url, notice: "You must sign up first"
    end
  end

  def destroy
    reset_session
    redirect_to signin_url
  end
end
