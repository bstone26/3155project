class PostsController < ApplicationController 
    def index
        if(params[:post] && Post.all.collect(&:category).include?(params[:post][:category]))
            @posts = Post.send(params)
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
        
        @post.save
        redirect_to @post
    end
    def edit
        @post = Post.find(params[:id])
    end
    def update
        @post = Post.find(params[:id])
        
        if @post.update(post_params)
            redirect_to @post
        else
            render 'edit'
        end
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
    