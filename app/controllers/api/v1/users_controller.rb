class Api::V1::UsersController < ApplicationController

    def create
        user = User.new(user_params)
        if user.save
            render json: user, only: [:id, :username, :name]
        else 
            render json: {
                error: "Error signing up, please try again.",
                status: 400
              }, status: 400
        end 
    end 

# name - string
#username = string
#email - string 
#password_digest - string

private

    def user_parms
        params.require(:user).permit(:username, :name, :email, :password)
    end 

end 