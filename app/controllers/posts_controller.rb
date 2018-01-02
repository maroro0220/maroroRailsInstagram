class PostsController < ApplicationController
  def index
    @posts=Post.all.reverse
  end

  def new
  end

  def create
    Post.create(title: params[:title], username: params[:username], content: params[:content])
    redirect_to '/'
  end

  def read
    @post=Post.find(params[:id])
  end

  def edit
    @post=Post.find(params[:id])
  end

  def update
    post=Post.find(params[:id])
    post.update(title: params[:title], content: params[:content])
    redirect_to '/'
  end

  def delete
    post=Post.find(params[:id])
    post.delete
    redirect_to '/'
  end

end
