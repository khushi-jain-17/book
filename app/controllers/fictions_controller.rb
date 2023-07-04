class FictionsController < ApplicationController
	skip_before_action :verify_authenticity_token, only: [:create]
	def fetch_fiction_name
		@fiction=Fiction.find(params[:id])
		@name=@fiction.name 
		render json: { message: "fiction name",fiction_name: @name}
	end

	

	def new
		@fiction=Fiction.new
	end
	def create
		@fiction=Fiction.new(fiction_params)
		if @fiction.save
			render json: { message: "fiction created successfully", fiction: @fiction}
		else
			render :new
		end
	end
	def fav_fiction
		@user=User.find(params[:id])
		@fav=@user.fav_fictions
		render json: {message: "fav fiction",fav_fictions: @fav }
	end
	
    
	def fiction_params
		params.permit(:name)
	end


end

