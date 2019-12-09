class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def edit
    p "params"
    puts post_params
    p "id"
    puts params[:id]
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_url
  end

  def index
    @post = Post.new
    @posts = Post.all.order(created_at: :desc)
  end

  private

  def post_params
    params.require(:post).permit( :message, :username)
  end
end
