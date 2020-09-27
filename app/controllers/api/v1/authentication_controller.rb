class Api::V1::AuthenticationController < ApplicationController
    
    def login
        user = User.find_by(username: user_params[:username])
        if (!user)
            render json: {error: "No such user exists."}
        end 
       if user.authenticate(user_params[:password])
            secret_key = Rails.application.secrets.secret_key_base[0]
            token = JWT.encode({
            user_id: user.id,
            username: user.username    
            }, secret_key)
            render json: { token: token, user: user }
       else 
            render json: {error: "Invalid Password"}
       end 
    end 

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end 

end 