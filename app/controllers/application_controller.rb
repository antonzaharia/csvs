class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning

  helper_method :current_user

  def logged_in?
    !!session[:user_id]
  end
  
  def current_user
    @current_user ||= set_current_user
  end

  def set_current_user
    @current_user = logged_in? ? User.find(session[:user_id]) : nil
  end
end
