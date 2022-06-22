class Public::UsersController < ApplicationController
  def new
    # @user = Public::User.new
  end

  def show
    @user = Public::User.find(params[:id])
    debugger
  end
end
