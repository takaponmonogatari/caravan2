class BlogsController < ApplicationController
  def index
  end

  def sbow
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_blog_path
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :caregory, :body)
  end
end
