class FictionsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def fetch_fiction_name
		@fiction=Fiction.find(params[:id])
		@name=@fiction.name 
		render json: { message: "fiction name",fiction_name: @name}
	end

	
	def fiction_create
		@fiction=Fiction.new(fiction_params)
		if @fiction 
			@fiction.save
			render json: { message: "fiction created successfully", new_fiction: @fiction}
		else
			render json: {new: @fiction}
		end
	end
	def fav_fiction
		@user=User.find(params[:id])
		@fav=@user.fav_fictions
		render json: {message: "fav fiction",fav_fictions: @fav }
	end
	
	private
	def fiction_params
		params.require(:fiction).permit( :name)
	end
end



