class ApplicationController < ActionController::API
    def authenticate 
        authorization_token = request.headers[:authorization]
        if !authorization_token
            render status: :unauthorized
        else 
            token = authorization_token.split(" ")[1]
            secret_key = Rails.application.secrets.secret_key_base[0]
            decode_token = JWT.decode(token, secret_key)[0]

            @user = User.find(decode_token["user_id"])
        end 
    end 
end
