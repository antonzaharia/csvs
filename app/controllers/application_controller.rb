class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning

  def current_user
    @current_user ||= set_current_user
  end

  def set_current_user
    @current_user = logged_in? ? User.find(session[:user_id]) : nil
  end
end
