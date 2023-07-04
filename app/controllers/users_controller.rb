class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

	 def fetch_users_likes
       @user = User.find(params[:id])
       @likes = @user.likes
       render json: {message: "Likes", likes: @likes} 
    end

    def fetch_favorite_fictions
        @user = User.find(params[:id])
        @fav_fictions = @user.fav_fictions
        render json: {message: "Fav Fictions",fav_fictions: @fav_fictions}
    end

    def new
        @user=User.new
    end
    def create
        @user=User.new(user_params)
        if @user.save
            render json: {message: "user created successfully", user: @user}
        else
            render :new
        end
    end

    
    def user_params
        params.permit{:name}
    end


end
