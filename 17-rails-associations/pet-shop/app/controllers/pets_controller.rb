class PetsController < ApplicationController
    
    def index
        @pets = params[:sort] ? Pet.sorted_by_list_price : Pet.all
    end

    def new
        @pet = Pet.new
        @species = Species.all
    end

    def create
        pet = Pet.create(pet_params)

        redirect_to pet
        # redirect_to pet_path(pet)
    end

    def show
        @pet = Pet.find(params[:id])
    end

    private

    def pet_params
        params.require(:pet).permit(:age, :name, :species_id, :house_trained, :price)
    end
end
