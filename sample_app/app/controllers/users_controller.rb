class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    #will open debug console in rails server terminal. Shows variable values
    #debugger
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # handle successful save
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
