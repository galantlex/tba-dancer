class HomeController < ApplicationController
  def show
    @comps = Comp.all
  end
end
