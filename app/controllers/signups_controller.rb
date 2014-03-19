class SignupsController < ApplicationController

  def new
  end

  def create
    @name = params[:name]
    @email = params[:email]
  end
end
