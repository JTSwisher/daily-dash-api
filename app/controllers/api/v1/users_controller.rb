class Api::V1::UsersController < ApplicationController

    def create
        user = User.new(user_params)
        if user.save
            secret_key = Rails.application.secrets.secret_key_base[0]
            token = JWT.encode({
            user_id: user.id,
            username: user.username    
            }, secret_key)
            render json: { token: token, user: user }
        else 
            render json: {
                error: "Error signing up, please try again.",
                status: 400
              }, status: 400
        end 
    end 

private

    def user_params
        params.require(:user).permit(:username, :name, :password)
    end 

end 