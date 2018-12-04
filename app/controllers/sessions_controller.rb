class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  def edit
    @user = User.find_by(uid: current_user.uid)
  end
  def update
    @user = User.find_by(uid: current_user.uid)
    @user.major = params[:user][:major]
    @user.save
    redirect_to root_path
  end
end
