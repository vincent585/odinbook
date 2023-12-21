class FollowsController < ApplicationController
  def new
    @follow = Follow.new
  end

  def create
    @follow = Follow.new(followed_id: params[:id], follower_id: current_user.id, accepted: false)

    if @follow.save
      flash[:notice] = 'Follow request sent!'
      redirect_to users_path
    else
      redirect_to users_path, status: :unprocessable_entity
    end
  end

  def update; end

  def destroy; end
end
