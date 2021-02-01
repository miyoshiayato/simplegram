class LikesController < ApplicationController
  def create
    @like = current_user.likes.build(like_params)
    
  end
  
  private
  def like_params
    params.permit(:post_id)
  end
end
