class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  # GET /courses/1/edit
  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to [:admin, @user], notice: 'User was created successfully.'
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to [:admin, :users], notice: 'update successfully'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    render_to admin_users_url, notice: 'User was successfully destroyed'
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :role, :mobile)
    end
end
