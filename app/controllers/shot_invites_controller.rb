class ShotInvitesController < ApplicationController
  before_action :set_shot

  def new
    @shot_invite = ShotInvite.new
    @profiles = current_account.profiles
  end

  def create
    @shot_invite = ShotInvite.new(shot_invite_params)
    @shot_invite.save
    @shot_invite.Event.create(event_params)
  end

  def edit
  end

  def update
    @invite = ShotInvite.find(params[:id])
    @invite.update_attribute(:in_team, true)
    respond_to do |format|
      format.js
    end
  end

  def destroy
    invite = ShotInvite.find(params[:id])
    invite.destroy
    respond_to do |format|
      format.js
    end
  end

  def add_teammember
    @shots = params[:shots]
  end

  private

  def set_shot
    @shot = Shot.find(params[:id])
  end


  def shot_invite_params
      params.require(:shot_invite).permit(:inviter_id, :invitee_id, :shot_id)
  end

   def event_params
      params.require(:shot_invite).permit(:shot_id)
  end

  # def shot_invite_params_for_one_person
  #     params.require(:shot_invite).permit(:inviter)
  # end
end
