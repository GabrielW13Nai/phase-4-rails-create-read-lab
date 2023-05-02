class PlantsController < ApplicationController
  wrap_parameters format: []
  def index
    plant = Plant.all
    render json: plant
  end
  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end
  def create
    plant = Plant.create(wrap_params)
    render json: plant, status: :created
  end

  private

  def wrap_params
    params.permit(:name, :image, :price)
  end
end
