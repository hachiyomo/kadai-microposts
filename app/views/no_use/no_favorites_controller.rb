class FavoritesController < ApplicationController
  before_action :require_user_logged_in
   
  def create
    favopost = User.find(params[:micropost_id])
    current_user.favorite(favopost)
    flash[:success] = 'お気に入りしました。'
    redirect_to favopost
  end

  def destroy
    favopost = User.find(params[:micropost_id])
    current_user.unfavorite(favopost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to favopost
  end
end