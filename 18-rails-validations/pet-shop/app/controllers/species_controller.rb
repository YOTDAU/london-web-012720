# frozen_string_literal: true

class SpeciesController < ApplicationController
  before_action(:set_species, only: %i[show edit update destroy])

  def index
    @species = Species.all
  end

  def show; end

  def new
    @species = Species.new
  end

  def edit; end

  def create
    species = Species.create(species_params)

    redirect_to species
    # redirect_to species_path(species)
  end

  def update
    @species.update(species_params)

    redirect_to @species
  end

  def destroy
    @species.destroy
    redirect_to species_index_path
  end

  private

  def set_species
    @species = Species.find(params[:id])
  end

  def species_params
    params.require(:species).permit(:name, :rare, :size)
  end
end
