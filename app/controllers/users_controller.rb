class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user

  end

  def show

  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
