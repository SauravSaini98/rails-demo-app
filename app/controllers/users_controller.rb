class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :show_mailer_template]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path(@user)
    else
      render :new
    end
  end

  def show
  end

  def show_mailer_template
    render template: 'user_mailer/send_welcome_email', layout: 'mailer'
  end

  def edit
  end

  def update
    if @user.save
      redirect_to users_path(@user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :email, :password, :contact)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
