class FluitsController < ApplicationController
  def index
    @fluits = Fluit.all
  end

  def new
    @fluits = Fluit.new
  end

  def create
    @fluits = Fluit.new(fluit_params)
    @fluits.save
  end

  private
  def fluit_params
    params.require(:fluit).permit(:name, :price)
  end
end
