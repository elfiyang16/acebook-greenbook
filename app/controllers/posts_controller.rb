class PostsController < ApplicationController
  #force the user to redirect to the login page if the user was not logged in
  before_action :authenticate_user!

  def create
    @post = current_user.posts.create(post_params)

    if (@post.wall_id == 0)
      redirect_to posts_url
    else
      @user_url = '/users/' + @post.wall_id.to_s
      redirect_to @user_url
    end
  end

  def edit
    @user = current_user
    @post = Post.find(params[:id])

    # if @post.user_id != current_user.id # checks if user owns post
    #   flash[:error] = "Don't touch other's posts! What do you want? "
    #   redirect_to(posts_url) && return
    # end
      @post.update(post_params)
      redirect_to posts_url
  end

  def index
    @post = current_user.posts.new
    @user = current_user
    @user_id = current_user.id
    @username = current_user.username
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @username = current_user.username
    @user = current_user
    @posts = current_user.posts.all.order(created_at: 'DESC')
  end

  def destroy
    @post = Post.find(params[:id])

    if @post.user_id != current_user.id # checks if user owns post
      flash[:error] = "Cannot delete other user's posts"
      redirect_to(posts_url) && return
    end

   @post.destroy
   redirect_to posts_url
  end


  private

  def post_params
    params.require(:post).permit( :message, :wall_id)
  end
end
