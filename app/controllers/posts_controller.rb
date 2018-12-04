class PostsController < ApplicationController 
    def index
        if(params.has_key?(:Post))
            @posts = Post.where(category: params[:Post][:category])
        else
            
            @posts = Post.all
        end
    end
    def show
        @post = Post.find(params[:id])
    end
    def new
    end

    def create
        @post = Post.new(post_params)
        @post.like = 0
        @post.dislike = 0
        @post.save
        redirect_to @post
    end
    def edit
        @post = Post.find(params[:id])
    end
    def update
        @post = Post.find(params[:id])
        if(params["commit"]["Like"])
            @post.like += 1
        else
            @post.dislike += 1
        end
        @post.save
        redirect_to @post
    end
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        
        redirect_to posts_path
    end
    
end

private
    def post_params
        params.require(:post).permit(:title, :text, :category)
    end
    