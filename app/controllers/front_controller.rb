class FrontController < ApplicationController

  layout 'front'

  def show
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
