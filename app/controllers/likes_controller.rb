class LikesController < ApplicationController
	skip_before_action :verify_authenticity_token, only: [:create]

	def liked_fictions
		@user=User.find(params[:id])
		@likes=@user.likes
		render json: {message: "liked_fictions",likes: @likes}
	end
	def fetch_all_likes
		@likes=Like.all()
		render json: {message: "all_likes", likes: @likes}
	end
	def new 
		@like=Like.new
	end
	def create
		@like=Like.new(set_params)
		if @like.save
			render json: {message: "like created successfully", like: @like}
		else
			render :new
		end
	end
	
	def set_params
		params.permit(:user_id, :book_id)
	end

end

