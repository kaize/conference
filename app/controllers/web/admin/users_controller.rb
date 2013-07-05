class Web::Admin::UsersController < ApplicationController
  def index
    @users = User.web
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def create
    @user = CreateAdminUserType.new params[:user]
    if @user.save
      f(:success)
      redirect_to edit_admin_user_path(@user)
    else
      f(:error)
      render :new
    end
  end

  def update
    @user = User.find params[:id]
    @user = @user.becomes(EditAdminUserType)
    if @user.update params[:user]
      f(:success)
      redirect_to edit_admin_user_path(@user)
    else
      f(:error)
      render :edit
    end
  end
end
