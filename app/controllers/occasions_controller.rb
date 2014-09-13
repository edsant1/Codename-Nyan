class OccasionsController < ApplicationController
  before_action :set_occasion, only: [:edit, :update, :destroy, :show]

  def new
    @occasion = Occasion.new
  end

  def index
    @occasion = Occasion.all
  end

  def show
  end

  def create
    @occasion = Occasion.new(occasion_params)
    if @occasion.save
      redirect_to @occasion, notice: "Occasion has been created"
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @occasion.update(occasion_params)
      redirect_to @occasion, notice: "Occasion has been updated"
    else
      render :edit
    end
  end

  def destroy
    @occasion.destroy
    redirect_to root_path, notice: "occasion has been deleted"
  end

  private

    def occasion_params
      params.require(:occasion).permit(:name, :description)
    end

    def set_occasion
      @occasion = Occasion.find(params[:id])
    end

end
