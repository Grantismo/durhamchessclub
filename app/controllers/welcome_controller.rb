class WelcomeController < ApplicationController
  layout false
  def index
    @posts = Post.where(publish: true).last(5)
  end
end
