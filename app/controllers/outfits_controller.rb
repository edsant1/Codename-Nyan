class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:edit, :update, :destroy, :show]

  def new
    @outfit = Outfit.new
  end

  def index
    @outfit = Outfit.all
  end

  def show
  end

  def create
    @outfit = Outfit.new(outfit_params)
    if @outfit.save
      redirect_to @outfit, notice: "Outfit has been created"
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @outfit.update(outfit_params)
      redirect_to @outfit, notice: "Outfit has been updated"
    else
      render :edit
    end
  end

  def destroy
    @outfit.destroy
    redirect_to root_path, notice: "outfit has been deleted"
  end

  private

    def outfit_params
      params.require(:outfit).permit(:name, :description)
    end

    def set_outfit
      @outfit = Outfit.find(params[:id])
    end

end