class SessionsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by_name(params[:name])
    if user
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end
end
