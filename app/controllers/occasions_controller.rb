class OccasionsController < ApplicationController
  def new
    @occasion = Occasion.new
  end

  def create
    @occasion = Occasion.new(occasion_params)
    
  end

  def edit
    @occasion = Occasion.find(occasion_params[:id])
  end

  def update
  end

  def destroy
  end
end
