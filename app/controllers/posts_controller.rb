class PostsController < ApplicationController

  def index
    @page_title = 'Latest Posts'

    @posts = Post.all
  end

  def new
  end

  def show
    # ブラウザのタブに表示されるページタイトルには投稿者の名前を設定する。
    # @page_title =
    @details_post = Post.find(params[:id])
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
