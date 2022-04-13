class UsersController < ApplicationController

    def index 
        render json: User.all
    end 

    #get '/me'
    def show 
        if current_user
            render json: current_user, status: :ok
        else
            render json: { error: "No active session" }, status: :unauthorized
        end
    end

    #post '/signup'
    def create 
        user = User.create!(user_params)
        session[:user_id] = user.id 
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
        params.permit(:username, :email, :password, :password_confirmation)
    end

end
