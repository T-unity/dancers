class Public::UsersController < ApplicationController
  def new
    @user = Public::User.new
  end

  def create
    # @user = Public::User.new( params[:user] )
    @user = Public::User.new( user_params )
    if  @user.save
      # 成功
    else
      exit
    end
  end

  def show
    @user = Public::User.find(params[:id])
    debugger
  end

  private

    # ストロングパラメータ
    def user_params
      # requireとpermitに関しては以下を参照
      # https://qiita.com/gogotakataka1234/items/47ad430fed87a2335f6d
      params.require(:public_user).permit(
        :name,
        :email,
        :password,
        :password_confirmation,
      )
    end

end
