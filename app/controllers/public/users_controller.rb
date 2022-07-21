class Public::UsersController < ApplicationController
  def new
    @user = Public::User.new
  end

  def create
    @user = Public::User.new( user_params )
    if  @user.save
      log_in @user
      flash[:success] = '登録に成功しました'
      redirect_to user_path( @user )
    else
      render action: :new
    end
  end

  def index
    @user = Public::User.all()
  end

  def show
    @user = Public::User.find(params[:id])
  end

  def edit
    @user = Public::User.find(params[:id])
  end

  def update
    @user = Public::User.find(params[:id])
    # バリデーションを無視して直接カラムを更新しているので要検討
    if @user.update_columns(name: user_update_params['name']) && @user.update_columns(email: user_update_params['email'])
      flash[:success] = '登録情報を更新しました'
      redirect_to user_path( @user )
    else
      render 'edit'
    end
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

    def user_update_params
      params.require(:public_user).permit(
        :name,
        :email,
      )
    end

end
