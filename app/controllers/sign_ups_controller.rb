class SignUpsController < ApplicationController

  def new
    @sign_up_count = SignUp.count
    @sign_up = SignUp.new
  end

  def create
    @sign_up = SignUp.new(sign_up_params)
    if @sign_up.save
      redirect_to sign_ups_path
    else
      flash[:error] = @sign_up.errors.full_messages.join(", ")
      render :new
    end
  end

  def edit
    @sign_up = SignUp.find(params[:id])
  end

  def update
    @sign_up = SignUp.find(params[:id])
    @sign_up.update(sign_up_params)
    redirect_to sign_ups_path
  end

  def index
    @sign_ups = SignUp.all
  end

  def sign_up_params
    params.require(:sign_up).permit(:name, :email)
  end
end
