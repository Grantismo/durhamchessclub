class WelcomeController < ApplicationController
  layout false
  def index
    @posts = Post.where(publish: true).limit(5)
  end
end
