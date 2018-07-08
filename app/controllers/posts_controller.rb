class PostsController < ApplicationController
  
  before_action :authenticate_model!, only: [:create, :destroy]
  before_action :set_post, only: [:destroy]
  before_action :authorize_model, only: [:destroy]

  def home
  	@post = Post.new
  	@posts = Post.all

  	@comment = Comment.new
  end

  def new
  end


  def create
  	@post = Post.create(content: params[:post][:content],model_id: current_model.id)


		redirect_to action: "home"
  end

  def destroy
  	@post.destroy
  	  	redirect_to action: "home"
  end

  private

  def set_post
  	@post = Post.find(params[:id])
  end

  def authorize_model
  	if(@post.model_id != current_model.id)
  		redirect_to action: "home"
  	end
   end

  	



  

end
