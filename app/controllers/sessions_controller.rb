class SessionsController < ApplicationController

  def new 
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      cookies.permanent[:auth_token] = user.id
      session[:role] = user.role
      redirect_to user, :notice => "Logged in."
    else
      redirect_to root_url, :alert => "Invalid email or password."
    end 
  end

  def destroy
    cookies.delete :auth_token
    redirect_to root_url, :notice => "Logged out."
  end

end
