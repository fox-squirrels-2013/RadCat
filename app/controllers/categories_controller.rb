class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    p params
    @category = Category.new params[:category]
    redirect_to categories_path if @category.save
  end

  def show
    @category = Category.find params[:id]
    @posts = @category.posts
  end

end

