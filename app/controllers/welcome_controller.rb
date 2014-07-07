class WelcomeController < ApplicationController
  layout false
  def index
    @posts = Post.where(publish: true).order('published_at DESC').last(5)
  end
end
