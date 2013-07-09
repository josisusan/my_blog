class PostsController < ApplicationController
  def index
  	@posts = Post.page(params[:page]).per(3)
  end
  def new
  	@post = Post.new
  end
  def create
  	@post=Post.new(params[:post])
  	@post.save!
  	redirect_to @post
  end
  def show
  	@post = Post.find(params[:id])
  end

end
