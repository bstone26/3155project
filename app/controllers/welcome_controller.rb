class WelcomeController < ApplicationController
  def index
    if current_user
      @posts = Post.where(author_id: current_user.uid)
    end
  end
end
