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
  end

  def update
  end

  def delete
  end

end
