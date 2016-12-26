class SeekController < ApplicationController
  def new
    @user = current_user
    @comps = Comp.all
  end
end
