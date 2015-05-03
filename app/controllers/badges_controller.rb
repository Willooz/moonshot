class BadgesController < ApplicationController
  def index
    @badges = Badge.all
    @giver = current_profile
    @receiver = Profile.find(params[:id])
    @shot = Shot.find(params[:shot_id])
  end

  def select
    badges = params[:badges]
  end
end
