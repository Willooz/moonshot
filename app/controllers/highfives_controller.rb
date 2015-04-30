class HighfivesController < ApplicationController
  def index
    @highfives = Highfive.all
  end

  def create
    badge_ids = params[:badges].map { |k, v| k.to_i }
    shot = Shot.find(params[:shot_id])
    badge_ids.each do |badge_id|
      shot.highfives.build(
        badge_id: badge_id,
        giver_id: params[:profile_id],
        receiver_id: params[:receiver_id]
      )
    end
  end
end