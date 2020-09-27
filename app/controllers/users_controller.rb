class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]

    def index
        users = User.all

        render json: users
    end

    def show
        render json: @user
    end

    def create
        user = User.new(user_params)

        if user.save
            render json: user
        else
            render json: {"error": "the user could not be created"}
        end
    end

    def update

    end

    def destroy

    end

    private

        def find_user
            @user = User.find(params[:id])
        end

        def user_params
            params.require(:user).permit(:name, :password, :curator)
        end
end
