class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new params[:post]
                     # category_id: params[:category_id]
    redirect_to post_path(@post.id) if @post.save
  end


  def show
    @post = Post.find params[:id]
    @category = @post.category
  end


end