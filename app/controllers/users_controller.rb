class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # debugger
  end

  def create
    @user = User.new( user_params)
    if @user.save
      # 保存の成功
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # this is same as [ redirect_to user_url(@user)]
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
