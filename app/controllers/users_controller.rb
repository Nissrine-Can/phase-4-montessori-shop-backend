class UsersController < ApplicationController

    def index 
        render json: User.all
    end 

    def create 
      user = User.create!(user_params)
      render json: user, status: :created
    end

    def destroy 
        user = User.find!(params[:id])
        user.destroy
        #no_content will return a status of deleted and an empty object
        head :no_content
    end

    private 

    def user_params
        params.permit(:username, :email)
    end

end
