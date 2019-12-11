class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    p "user"
    p @user.id
    @post = Post.new
    @wall_posts = Post.where(wall_id: params[:id])
  end
end
