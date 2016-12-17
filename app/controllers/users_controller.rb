class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "新規登録されました。"
      redirect_to reservation_path
    else
      render 'new'
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:last_name, :first_name, :email, :password,
        :password_confirmation)
    end
end
