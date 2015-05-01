class HighfivesController < ApplicationController
  def index
    @highfives = Highfive.all
  end



  def create
    badge_ids = params[:badges].keys.map { |k| k.to_i }
    shot = Shot.find(params[:shot_id])
    badge_ids.each do |badge_id|
      highfive = shot.highfives.build(
        badge_id: badge_id,
        giver_id: params[:profile_id],
        receiver_id: params[:receiver_id]
      )
      highfive.save
      event = highfive.Event.create(shot_id: shot.id)
    end
    redirect_to account_profile_shots_path(params[:account_id], params[:profile_id])
  end
end