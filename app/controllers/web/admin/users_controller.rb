class Web::Admin::UsersController < Web::Admin::ApplicationController
  def index
    @users = User.web
  end

  def new
    @user = CreateAdminUserType.new
  end

  def edit
    @user = User.find params[:id]
    @user = @user.becomes(EditAdminUserType)
  end

  def create
    @user = CreateAdminUserType.new params[:user]
    if @user.save
      f(:success)
      redirect_to edit_admin_user_path(@user)
    else
      f(:error, now: true)
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
      f(:error, now: true)
      render :edit
    end
  end
end
