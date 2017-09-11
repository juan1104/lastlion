class PostsController < ApplicationController
  def index
    
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    
    # Post.create(title: params[:title], content: params[:content])
    Post.create(title: params[:post][:title], content: params[:post][:content])
    redirect_to '/posts'
    
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(title: params[:post][:title], content: params[:post][:content])
    redirect_to '/posts'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/posts'
  end
  def show
      @post = Post.find(params[:id])
      @comments = Comment.all
  end
end
