class Api::V1::AuthenticationController < ApplicationController
    
    def login
        user = User.find_by(username: user_params[:username])
        if (!user) 
            render json: {
                error: "No such user exists",
                status: 400
              }, status: 400
        else 
            if user.authenticate(user_params[:password])
                secret_key = Rails.application.secrets.secret_key_base[0]
                token = JWT.encode({
                user_id: user.id
                }, secret_key)

                render json: { token: token, user: user }
           else 
                render json: {
                    error: "Error signing in, please try again.",
                    status: 400
                  }, status: 400
           end 
        end 
    end 

    private

    def user_params
        params.require(:user).permit(:username, :name, :password)
    end 

end 