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
    
    def create
        @user=User.new(user_params)
        
        if @user
            @user.save
            render json: {message: "user created successfully", new_user: @user}
        else
            #render :new
           render json: {new: @user }
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email)
    end

end
