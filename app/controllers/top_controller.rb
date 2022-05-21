class TopController < ApplicationController

  # トップページ
  def index
    @text = 'テストテキスト'
  end

  # アバウトページ
  def about
    render plain: flash[:notice]
    # render plain: flash
    # p flash[:notice]
  end

  # テスト
  def test
    # render plain: request
    # p request

    flash[:notice] = 'フラッシュを使ってリダイレクト'
    redirect_to action: 'about'
  end
end
