class LikesController < ApplicationController
  def create
    @like = current_user.likes.build(like_params)
    
  end
  
  
end
