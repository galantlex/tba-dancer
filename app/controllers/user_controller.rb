class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @seeks = @user.seeks.all
  end
  def edit
    if current_user
      @user = current_user
    else
      redirect_to root_path
    end
  end
  
  def save_edit
    if current_user
      @user = current_user
      if @user.update_attributes(user_params)
        redirect_to user_show_path(@user)
      else
        redirect_to profile_edit, alert: 'Error in updating profile'
      end
    else
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:contact, :bio, :height)
  end
end
