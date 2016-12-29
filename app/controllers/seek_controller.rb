class SeekController < ApplicationController
  def new
    @seek = Seek.new
    @roles = ['Follower', 'Leader']
    @styles = ['Rhythm', 'Latin', 'Smooth', 'Standard']
    @levels = ['Newcomer', 'Bronze', 'Silver', 'Gold', 'Novice', 'Prechamp',
                   'Champ']
  end
  def create
	@seek = Seek.new(seek_params)
	@seek.user_id = current_user.id
        @roles = ['Follower', 'Leader']
        @styles = ['Rhythm', 'Latin', 'Smooth', 'Standard']
        @levels = ['Newcomer', 'Bronze', 'Silver', 'Gold', 'Novice', 'Prechamp',
                   'Champ']
        if @seek.save
      	  redirect_to comp_show_path(@seek.comp_id)
    	else
          render 'new'
    	end
  end
  
  private
  
  def seek_params
    params.require(:seek).permit(:user_id, :comp_id, :role, :style,
                                 :level)
  end
end
