class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end
end
