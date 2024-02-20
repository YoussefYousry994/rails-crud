class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    if @post
      @comment = @post.comments.create(comment_params)
      # ...
    else
      redirect_to root_path
    end
  end
    # def create 
    #   comment = @post.comments.create! params.require(:comment).permit(:content)
    #   CommentsMailer.submitted(@post, comment).deliver_later
    #   redirect_to @post
    # end
    
    private 
    def set_post
        @post = Post.find(params[:post_id])
    end
    def comment_params
      params.require(:comment).permit(:content, :post_id)
    end
end
