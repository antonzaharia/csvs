class HomeController < ApplicationController
  skip_before_action :redirect_to_root, only: [:index]

  def index
  end

  def dashboard
  end
end
