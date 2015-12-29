class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
    if blog.save
      redirect_to blog
    else
      render 'new'
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update!(blog_params)
    redirect_to blog
  end

  def destroy
    binding.pry
    # @blog = Blog.find(params[:id])
    # flash[:notice] = "You have successfully deleted #{blog.title}"
    # @blog.destroy
    redirect_to 'index'
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :link, :contact, :notes)
  end
end
