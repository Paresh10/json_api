class ApplicationController < ActionController::API
     before_action :authorized unless [:logged_in_user]

    def encode_token(payload)
        JWT.encode(payload, 'stack_sports_api')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decode_token
        if auth_header
            token = auth_header.split(' ')[1]

            begin
                JWT.decode(token, 'stack_sports_api', true, algorithm: 'HS256')
            rescue
                JWT::DecodeError
                nil
            end
        end
    end

    def logged_in_user
        if decode_token
            user_id = decode_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!logged_in_user
    end

     def authorized
        render json: {message: "Please log in to access data"}, status: :unauthorized unless logged_in?
     end
end
