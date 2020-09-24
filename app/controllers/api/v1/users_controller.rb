class Api::V1::UsersController < ApplicationController

    def create
        binding.pry
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

private

    def user_params
        params.require(:user).permit(:username, :name, :password)
    end 

end 