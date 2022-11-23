class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: user_params[:email])
    if @user&.authenticate(user_params[:password])
      session[:user_id] = @user.id

      redirect_to dashboard_path
    else
      redirect_to new_session_path, error: 'Wrong email or password.'
    end
  end

  def destroy
    session.delete(:user_id)

    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
