class TopController < ApplicationController

  # トップページ
  def index
  end

  # アバウトページ
  def about
  end

  # テスト
  def test
    render plain: request
    # p request
  end
end
