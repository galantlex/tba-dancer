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
	@seek.dancer_id = current_user.id
        @roles = ['Follower', 'Leader']
        @styles = ['Rhythm', 'Latin', 'Smooth', 'Standard']
        @levels = ['Newcomer', 'Bronze', 'Silver', 'Gold', 'Novice', 'Prechamp',
                   'Champ']
        if @seek.save
      	  redirect_to root
    	else
          redirect_to root
    	end
  end
  
  private
  
  def seek_params
    params.require(:seek).permit(:dancer_id, :comp_id, :role, :style,
                                 :level)
  end
end
