class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only:  [:index, :show]
  before_action :find

  def index
    @boats = Boat.all
  end

  def show; end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to baot_path(@boat)
    else
      render :new
    end
  end

  def edit; end

  def update
      @boat.update(boat_params)
    if @boat_save
      redirect_to product_path(@boat)
    else
      render :edit
    end
  end

  def delete
    @boat.destroy
    redirect_to :index
  end

  private

  def find
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name, :description, :colour)
  end
end
