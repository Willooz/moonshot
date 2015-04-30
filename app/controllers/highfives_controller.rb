class HighfivesController < ApplicationController
  def index
    @highfives = Highfive.all
  end

  def create
    badge_ids = params[:badges].map { |k, v| k.to_i }
    profile = Profile.find(params[:profile_id])
    badge_ids.each do |badge_id|
      newh = profile.highfives.build()
    end
  end
end