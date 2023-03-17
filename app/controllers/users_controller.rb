class UsersController < ApplicationController
    def show
        user_items = User.find(params[:id])
        render json: user_items, include: :items, status: :ok
    end
end
