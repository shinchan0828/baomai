class PagesController < ApplicationController
  def index
    if logged_in?
      @user = User.find(current_user.id)
      redirect_to user_path(@user)
    else
      render :index
    end
  end
end
