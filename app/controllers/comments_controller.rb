class CommentsController < ApplicationController
  before_action :authenticate_model!, only: [:create, :destroy]
  before_action :set_comment,only: [:destroy]
  before_action :authorize_model,only: [:destroy]
 

  def create
  	comment = Comment.create(content: params[:comment][:content],
  		model_id: current_model.id , 
  		post_id: params[:comment][:post_id], user_id: 0)


		redirect_to root_path
  end

  def destroy
  	@comment.destroy
  	redirect_to root_path
  end

   private

  def set_comment
  	@comment = Comment.find(params[:id])
  end

  def authorize_model
  	if(@comment.model_id != current_model.id)
  		redirect_to root_path
  	end
   end
end
