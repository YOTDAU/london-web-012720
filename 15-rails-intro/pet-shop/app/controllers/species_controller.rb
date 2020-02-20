# frozen_string_literal: true

class SpeciesController < ApplicationController
  def index
    @species = Species.all
  end

  def show; end

  def new; end

  def create
    species = Species.create

    redirect_to species
    redirect_to species_path(species)
  end
end
