class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new params[:post]
    redirect_to post_path(@post.id) if @post.save
  end

  def show
    @post = Post.find params[:id]
    @category = @post.category
  end

  def edit
    @post = Post.find params[:id]
    redirect_to root_path unless @post.key == params[:key]
  end



end