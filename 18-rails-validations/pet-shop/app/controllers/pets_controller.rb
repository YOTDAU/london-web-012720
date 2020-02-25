class PetsController < ApplicationController
    
    def index
        @pets = params[:sort] ? Pet.sorted_by_list_price : Pet.all
    end

    def new
        @pet = Pet.new
        @species = Species.all
        @owners = Owner.all
    end

    def edit
        @pet = Pet.find(params[:id])
        @species = Species.all
        @owners = Owner.all
    end

    def update
        pet = Pet.find(params[:id])
        pet.update(pet_params)
        
        if pet.valid?

            redirect_to pet
        else 
            flash[:errors] = pet.errors.full_messages
            redirect_to edit_pet_path pet
        end
    end

    def create
        pet = Pet.create(pet_params)

        redirect_to pet
    end

    def show
        @pet = Pet.find(params[:id])
    end

    private

    def pet_params
        params.require(:pet).permit(:age, :name, :species_id, :owner_id, :house_trained, :price)
    end
end
