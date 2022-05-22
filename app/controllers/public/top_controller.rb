# class TopController < ApplicationController
class Public::TopController < ApplicationController
# ディレクトリ構造を変えたため、::で名前空間を設定
# https://qiita.com/hatorijobs/items/87a2bd93f8666d77d711
# /controllersと/viewsからの相対パスでrailsがよしなに判断してくれるので、それ以下のpathを一致させるようにしておく。

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
