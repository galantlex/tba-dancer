class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  @roles = ['Leader', 'Follower']
  @levels = ['Newcomer', 'Bronze', 'Silver', 'Gold', 'Novice', 'Pre-Champ',
             'Champ']
  @styles = ['Rhythm', 'Latin', 'Smooth', 'Standard']
end
