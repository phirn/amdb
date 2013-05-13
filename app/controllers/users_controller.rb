class UsersController < ApplicationController
  before_filter :authorize_user, only: [:edit, :update, :destroy]

  def authorize_user
    @user = User.find(params[:id])
    if @user.id != session[:user_id]
      redirect_to users_url, notice: "Nice try."
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]

    if @user.save
      redirect_to users_url, :notice => "User created."
    else
      redirect_to new_user_url, :notice => "Username taken."
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.username = params[:username]

    if @user.save
      redirect_to users_url, :notice => "User updated."
    else
      redirect_to edit_user_url(@user.id), :notice => "Username taken."
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
    redirect_to users_url
  end
end
