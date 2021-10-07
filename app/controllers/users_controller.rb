class UsersController < ApplicationController
    # before_action :authorized

    def create_user
        @user = User.create(user_params)

        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: {
                user: @user,
                token: token
            }
        else
            render json: {
                error: "Invalid email or password"
            }
        end
    end

    def user_login
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {
                user: @user,
                token: token
            }
        else
            render json: {error: "Invalid credentials"}
        end
    end

    private

    def user_params
        params.permit(:name, :email, :password)
    end
end
