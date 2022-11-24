class CsvsController < ApplicationController
  def index
    @csvs = current_user.csvs.all
  end

  def create
    csv = CSV.new(params[:csv])
    csv.read
    csv.each do |row|
    end
  end

  def show
  end
end
