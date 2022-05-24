class UsersController < ApplicationController

    skip_before_action :authenticate_user, only: [:create, :show]

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

    #post '/signup' create a new user 
    def create 
        
        user = User.create!(user_params) #strong params
        session[:user_id] = user.id #logs user in for first time # when we set a value in a session and a request is made, then the set cookie method will be invoked on the client side and it's going to store this session in the cookie. Then, every subsequent request (if on same domain) is going to share these cookies with that session information and that's how we keep track of our user when they go to different part of the App.
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
