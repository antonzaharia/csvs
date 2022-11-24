class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning

  helper_method :current_user

  before_action :redirect_to_root

  def logged_in?
    !!session[:user_id]
  end
  
  def current_user
    @current_user ||= set_current_user
  end

  def set_current_user
    @current_user = logged_in? ? User.find(session[:user_id]) : nil
  end

  def redirect_to_root
    redirect_to root_path, notice: 'You must be logged in to access that page.' unless logged_in?
  end
end
