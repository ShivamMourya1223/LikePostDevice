class PostsController < ApplicationController

	def index
		@posts = Post.all

    end
  def new
  	@post = Post.new
  end

  def create
  	@post = Post.create(user_params)
  	redirect_to posts_path
  end

  def show
  	@post = Post.find(params[:id])
  end

  def edit
  end

  def user_params
  	params.require(:post).permit(:title,:body,:user_id)
  end
end
