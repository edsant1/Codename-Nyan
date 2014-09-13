class OccasionsController < ApplicationController
  before_action :set_occasion, only: [:edit, :update, :destroy]

  def new
    @occasion = Occasion.new
  end

  def create
    @occasion = Occasion.new(occasion_params)

  end

  def edit
  end

  def update
    if @occasion.update(occasion_params)
      respond_to.html {redirect_to root_path, notice: "Occasion has been created"}
    else
      render :edit
  end

  def destroy
    @occasion.destroy
    respond_to.html {redirect_to root_path, notice: "occasion has been deleted"
  end

  private

    def occasion_params
      params.require(:occasion).permit(:name, :description)
    end

    def set_occasion
      @occasion = Occasions.find(params[:id])
    end

end
