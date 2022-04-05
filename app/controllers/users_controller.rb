class UsersController < ApplicationController

    def create 
      user = User.create!(user_params)
      render json: user, status: :created

      rescue ActiveRecord::RecordInvalid => invalid 
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def destroy 
        user = User.find!(params[:id])
        user.destroy
        #no_content will return a status of deleted and an empty object
        head :no_content

        rescue ActiveRecord::RecordNotFound => errors
            render jsaon: { error: errors.message }, status: :not_found
    end

    private 

    def user_params
        params.permit(:username, :email)
    end

end
