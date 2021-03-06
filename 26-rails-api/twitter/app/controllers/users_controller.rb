class UsersController < ApplicationController

    def index
        users = User.all

        render({json: users})
    end

    def show
        user = User.find(params[:id])

        render json: user, methods: [:at_handle], only: [:handle], include: [:tweets]
    end

    def create
        user = User.new(user_params)

        if user.valid?
            user.save
            render json: user
        else
            render json: { errors: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def update

    end

    def destroy

    end

    private

    def user_params
        params.require(:user).permit(:handle, :email)
    end
end
