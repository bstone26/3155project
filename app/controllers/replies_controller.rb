class RepliesController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @reply = @post.replies.new(reply_params)
        @reply.commenter = current_user.name
        @reply.commenter_id = current_user.uid
        @reply.save
        redirect_to post_path(@post)
    end
    def destroy
        @post = Post.find(params[:post_id])
        @reply = @post.replies.find(params[:id])
        @reply.destroy
        redirect_to post_path(@post)
    end
    
    private
        def reply_params
            params.require(:reply).permit(current_user.name, :body)
        end
end
