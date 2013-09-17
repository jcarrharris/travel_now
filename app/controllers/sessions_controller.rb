class SessionsController < ApplicationController
  def new
    if session[:user_id] != nil
      redirect_to destinations_url
    end
  end

  def create
  	user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to destinations_url, :notice => "Logged in!"
    else
      flash.now[:alert] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to new_session_url, :notice => "Logged out!"
  end
end