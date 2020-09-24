class Api::V1::AuthenticationController < ApplicationController
    
    def login
        user = User.find_by(username: user_params[:username])
        if (!user)
            render json: {error: "No such user exists."}
        end 
       if user.authenticate(user_params[:password])
            render json: user, only: [:id, :username, :name]
       else 
            render json: {error: "Invalid Password"}
       end 
    end 

    private

    def user_params
        params.require(:user).permit(:username, :name, :password)
    end 

end 