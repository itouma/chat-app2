class UsersController < ApplicationController
  
  def edit
  end
  
  def update
    #  binding.pry
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  # user = User.find(params[:id])
  # user.update(user_params)
  
  # user = User.find(current_user.id)でも可
  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end