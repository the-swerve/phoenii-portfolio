class SessionsController < ApplicationController

  def new 
  end


  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
          cookies[:auth_token] = user.auth_token
      end 
        redirect_to account_customers_url(current_account)
    else
        redirect_to login_path, :alert => "Invalid email or password."
    end 
  end

end
