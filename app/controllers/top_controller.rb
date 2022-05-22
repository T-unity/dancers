class TopController < ApplicationController

  # トップページ
  def index
    @hypertext = "<b>大文字で出力</b>"
    @prod = 5
  end

  # アバウトページ
  def about
    # ページのタイトルを定義
    @page_title = '概要'
    # なぜかテンプレートで定義すると読み込めないので調査が必要。
  end

  # テスト
  def test
  end

  # お試しメソッド
  def some_function(arg1, arg2)
    # rubyは最後に評価された式がreturnされる。明示的にreturnしてもエラーにはならない。
    arg1 + arg2
  end
end
