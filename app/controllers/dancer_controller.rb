class DancerController < ApplicationController
  def index
    @dancers = Dancer.all
  end
  def show
    @dancer = Dancer.find(params[:id])
    @seeks = @dancer.seeks.all
  end
end
