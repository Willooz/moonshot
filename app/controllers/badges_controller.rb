class BadgesController < ApplicationController
  def index
    @badges = Badge.all
    @giver = Profile.find(params[:profile_id])
    @receiver = Profile.find(2)
    @account = @giver.account
    @shot = Shot.find(params[:shot_id])
  end

  def select
    badges = params[:badges]
  end
end
