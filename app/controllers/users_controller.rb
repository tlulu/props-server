class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def register
    @user = User.new
    @user.role = "Performer"
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.json { render json: @user }
      end
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      if @user
        format.json { render json: @user }
      end
    end
  end

  private

  # --- Strong params ---
  def user_params
    params.require(:user).permit(
        :email,
        :first_name,
        :last_name,
        :major,
        :minor,
        :payment_client_id,
        :role)
  end
end
