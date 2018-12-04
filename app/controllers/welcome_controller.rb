class WelcomeController < ApplicationController
  def index
    if current_user
      # @posts = Post.where(author_id: current_user.uid)
      @posts = Post.where(category: current_user.major)
    end
  end
end
