class TopController < ApplicationController

  # トップページ
  def index
  end

  # アバウトページ
  def about
    render plain: flash[:notice]
  end

  # テスト
  def test
    # render plain: request
    # p request

    flash[:notice] = 'フラッシュを使ってリダイレクト'
    redirect_to action: 'about'
  end
end
