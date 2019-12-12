class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @post = Post.new
    @wall_posts = Post.where(wall_id: params[:id]).order(created_at: 'DESC')
  end
end
