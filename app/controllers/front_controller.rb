class FrontController < ApplicationController

  def show
    if @current_user
      redirect_to @current_user
    end
  end
end
