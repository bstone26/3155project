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
    