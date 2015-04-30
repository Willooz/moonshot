class BadgesController < ApplicationController
  def index
    @badges = Badge.all
    @profile = Profile.find(params[:profile_id])
    @account = @profile.account
    @shot = Shot.find(params[:shot_id])
  end

  def select
    badges = params[:badges]
  end
end
