class TopController < ApplicationController

  # トップページ
  def index
    # @text = 'テストテキスト'
    # @ret = some_function(1,2)
    render plain: params
  end

  # アバウトページ
  def about
    # render plain: flash[:notice]
    # render plain: flash
    # p flash[:notice]
  end

  # テスト
  def test
    # render plain: request
    # p request

    # flash[:notice] = 'フラッシュを使ってリダイレクト'
    # redirect_to action: 'about'
  end

  # お試しメソッド
  def some_function(arg1, arg2)
    # return arg1 + arg2
    # rubyは最後に評価された式がreturnされる
    arg1 + arg2
  end
end
