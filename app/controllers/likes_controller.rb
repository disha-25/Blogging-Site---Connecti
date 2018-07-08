class LikesController < ApplicationController
  before_action :authenticate_model!

  def toggle
    # @like = Like.find_by(model_id: current_model.id,post_id: params[:post_id])
    # if@like.blank?
    # 	@like = Like.create(user_id: current_model.id , post_id: params[:post_id])
    # else
    # 	@like.destroy
    # end
    @post = Post.find(params[:post_id])
    if @post.model_can_like(current_model.id)
    	@like = Like.create(model_id: current_model.id,post_id: params[:post_id],user_id: 0)
    else
    	Like.find_by(model_id: current_model.id,post_id: params[:post_id]).destroy
    end

    redirect_to root_path
  end

  def toggleC
   @comment=Comment.find(params[:comments_id])
  if @comment.model_can_like(current_model.id)
        @like = Like.create(model_id: current_model.id,post_id: params[:post_id],user_id: 0)

 
   else
     Like.find_by(model_id:current_model.id,comments_id:params[:comments_id]).destroy
   end
   redirect_to root_path
   end

end
