class Public::UsersController < ApplicationController
  def new
  end

  def show
    @user = Public::User.find(params[:id])
  end
end
