class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end

  def create
      # Untested Code
    user = User.new(user_params)

    if user.save
      redirect_to user_path(user)
    else
      raise
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :first_name, :last_name, :description)
  end
end
