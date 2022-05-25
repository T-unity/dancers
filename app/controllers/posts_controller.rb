class PostsController < ApplicationController

  def index
    @page_title = 'Latest Posts'

    @posts = Post.all
  end

  def new
    @new_post = Post.new
  end

  def create
    # Post.create(post_params)
    # redirect_to(posts_path)
  end

  def show
    # ブラウザのタブに表示されるページタイトルには投稿者の名前を設定する。
    # @page_title =
    @details_post = Post.find(params[:id])
  end

  def edit
    # ORMのfindメソッド確認
    # paramsの中身ダンプして確認
    @edit_post = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end

  # private
  #   def post_params
  #     params.require(:post).permit(
  #       :content,
  #     )
  #   end

end
