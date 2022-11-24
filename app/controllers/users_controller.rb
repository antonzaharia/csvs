class UsersController < ApplicationController
  skip_before_action :redirect_to_root, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    session[:user_id] = @user.id

    redirect_to csvs_path
  rescue ActiveRecord::RecordInvalid => e
    redirect_to new_user_path, error: e.message
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
