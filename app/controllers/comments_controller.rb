class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @post = @comment.post
    if @comment.save
      respond_to :js
    else
      flash[:alert] = "コメントに失敗しました"
    end
  end
end
