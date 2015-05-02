class HighfivesController < ApplicationController
  def index
    @highfives = Highfive.all
  end

  def create
    badge_ids = params[:badges].keys.map { |k| k.to_i }
    shot = Shot.find(params[:id])
    badge_ids.each do |badge_id|
      highfive = shot.highfives.build(
        badge_id: badge_id,
        giver_id: current_profile.id,
        receiver_id: params[:receiver_id]
      )
      highfive.save
      event = highfive.events.create(shot_id: shot.id)
    end
    redirect_to shots_path
  end
end