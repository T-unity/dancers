class SessionsController < ApplicationController

  def new
  end

  def create

    # user = Public::User.find_by( email: params[:session][:email].downcase )
    user = Public::User.find_by( email: params[:email].downcase )
    # ユーザーの存在チェック、且つパスワードの生合成をチェック
    # if user && user.authenticate( params[:session][:password] )
    if user && user.authenticate( params[:password] )
      # 認可に成功
      # ログイン処理を記述
      # ログインに成功した事でflashで明示して、ユーザーの詳細ページにリダイレクト
    else
      # flash[:danger] = 'メールアドレス、もしくはパスワードが正しくないようです。'
      flash.now[:danger] = 'メールアドレス、もしくはパスワードが正しくないようです。'
      render 'new'
    end

  end

  def destroy
  end

end
