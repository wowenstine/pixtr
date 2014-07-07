class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    cookies.signed[:user_id] = user.id
    redirect_to galleries_path
  end

  def destroy
    cookies.delete(:user_id)
    redirect_to galleries_path
  end
end
