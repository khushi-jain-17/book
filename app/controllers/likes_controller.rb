class LikesController < ApplicationController
	skip_before_action :verify_authenticity_token

	def liked_fictions
		@user=User.find(params[:id])
		@likes=@user.likes
		render json: {message: "liked_fictions",likes: @likes}
	end
	def fetch_all_likes
		@likes=Like.all()
		render json: {message: "all_likes", likes: @likes}
	end

	def likes_create
		@like=Like.new(like_params)
		if @like
			@like.save
			render json: {message: "like created successfully", new_like: @like}
		else
			render json: {new: @like}
		end
	end
	private
	def like_params
		params.require(:like).permit(:user_id, :fiction_id)
	end

end

