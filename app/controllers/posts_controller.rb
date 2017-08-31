class PostsController < ApplicationController
  def index
    
    @posts = Post.all
    @newpost = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    
    Post.create(title: params[:title], content: params[:content])
    redirect_to '/'
    
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(title: parmas[:title], content:params[:content])
    redirect_to '/'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/'
  end
end
