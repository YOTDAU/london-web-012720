class OwnersController < ApplicationController

    def index
        @owners = Owner.all
    end

    def new
        @owner = Owner.new
    end

    def create
        owner = Owner.create(owner_params)

        redirect_to owner
    end

    def show
        @owner = Owner.find(params[:id])
    end

    private

    def owner_params
        params.require(:owner).permit(:name, :bg_checks_complete, :animal_capacity)
    end

end
