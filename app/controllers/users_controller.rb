class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to galleries_path
    else
      render :new
    end
  end

  def show 
    @user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
