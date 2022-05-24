class SessionsController < ApplicationController

    skip_before_action :authenticate_user, only: [:create, :login]
 
    def login #setting a session
        user = User.find_by!(username: params[:username])# params hash comes with the POST request body from frontend. the hash has 2 keys (username & password)
       if  user.authenticate(params[:password])
        session[:user_id] = user.id 
        
        render json: user, status: :ok
       else
        render json: "invalid credentials", status: :unauthorized
       end
    end

    def logout #destroy session
        session.delete :user_id
    end



end
