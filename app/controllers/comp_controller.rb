class CompController < ApplicationController
  def index
    @comps = Comp.all
  end
  def show
    @comp = Comp.find(params[:id])
    @seeks = @comp.seeks.all
  end
end
