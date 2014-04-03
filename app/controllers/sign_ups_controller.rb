class SignUpsController < ApplicationController

  def new
    @sign_up_count = SignUp.count
  end

  def create
    @sign_up = SignUp.new
    @sign_up.name = params[:name]
    @sign_up.email = params[:email]
    @sign_up.save
  end

  def index
    @sign_ups = SignUp.all
  end
end
