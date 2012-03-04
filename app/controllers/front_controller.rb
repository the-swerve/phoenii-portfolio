class FrontController < ApplicationController

  layout 'front'

  def show
    if current_user && current_user.business
      redirect_to business_path(current_user.business)
      return
    end
    if current_user
      redirect_to businesses_path
      return
    end
    @user = User.new
    if @current_user
      redirect_to @current_user
    end
  end
end
