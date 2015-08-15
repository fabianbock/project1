class HomeController < ApplicationController
  def about
  end

  def index
    if current_user
      flash[:alert] = "Hello #{current_user.email}!"
    end
  end
end
