class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :body))

    redirect_to post_path(@post)
  end

  private

    def find_comment
      @comment = Comment.find(params[:comment_id])
    end

    def find_post
      @post = Post.find(params[:post_id])
    end


end
