class HighfivesController < ApplicationController
  def index
    @highfives = Highfive.all
  end

  def create
    badge_ids = params[:badges].keys.map { |k| k.to_i }
    shot = Shot.find(params[:id])
    receiver = Profile.find(params[:receiver_id])
    badge_ids.each do |badge_id|
      highfive = shot.highfives.build(
        badge_id: badge_id,
        giver_id: current_profile.id,
        receiver_id: receiver.id
      )
      highfive.save
      event = highfive.events.create(shot_id: shot.id)
    end
    flash[:success] = "Your badges were given to #{receiver.user.name}"
    redirect_to shot_path(shot)
  end



end