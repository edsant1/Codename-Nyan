class OutfitsController < ApplicationController
  def new
    @outfit = Outfit.new
  end

  def create
    @outfit = Outfit.new(outfit_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
