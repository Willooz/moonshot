class BadgesController < ApplicationController
  def index
    @badges = Badge.all
    @giver = current_profile
    @receiver = Profile.find(2)
    @account = @giver.account
    @shot = Shot.find(params[:id])
  end

  def select
    badges = params[:badges]
  end
end
