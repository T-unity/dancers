class SessionsController < ApplicationController

  def new
  end

  def create
    # user = Public::User.find_by( email: params[:session][:email].downcase )
    # ORMを使用して、DB内にメールアドレスが一致するユーザーがいるかを走査
    user = Public::User.find_by( email: params[:email].downcase )
    # ユーザーの存在チェック、且つパスワードの整合性をチェック
    # if user && user.authenticate( params[:session][:password] )
    if user && user.authenticate( params[:password] )
      # 認可に成功
      # ログイン処理を記述
      # ログインに成功した事でflashで明示して、ユーザーの詳細ページにリダイレクト
      log_in user
      remember user
      # redirect_to user
      redirect_to user_path( user )
    else
      # flash[:danger] = 'メールアドレス、もしくはパスワードが正しくないようです。'
      # flash.nowは、リクエストが発生したタイミングで消失する。
      flash.now[:danger] = 'メールアドレス、もしくはパスワードが正しくないようです。再度入力をお試しください。'
      render 'new'
    end
  end

  def destroy
    # log_out
    log_out if logged_in? # ログイン中のユーザーのみログアウトを実行できるようにする。
    redirect_to root_url
  end

end
