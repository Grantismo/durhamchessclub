class PostsController < ApplicationController
  respond_to :html

  def show
    @post = Post.find(params[:id])

    respond_with @post
  end

  def index
    @posts = Post.where(publish: true)

    respond_with @posts
  end
end
