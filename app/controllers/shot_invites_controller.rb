class ShotInvitesController < ApplicationController
  before_action :set_shot, only: [:new, :create, :edit, :update, :destroy]

  def new
    @shot_invite = ShotInvite.new
    current_invites = []
    @shot.invitees.each do |invitee|
      current_invites << invitee.id
    end
    @profiles = current_account.profiles.where.not(id: current_invites)
    @current_profile = current_profile
  end

  def create
    @shot_invite = ShotInvite.new(shot_invite_params)
    @shot_invite.save!
    @shot_invite.events.create(params[:shot_id])
    flash[:notice] = "Your invitation has been sent. It needs to be accepted before it appears on the shot's overview or your mate's profile."
    redirect_to shot_path(@shot)
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
    @shots.each do |key, _value|
      ShotInvite.create(inviter_id: params[:inviter_id], invitee_id: params[:invitee_id], shot_id: key)
    end
    redirect_to people_show_path(params[:invitee_id])
    flash[:notice] = "Your shot invites have been sent. They need to be accepted before appearing on your colleague's profile or shot overview."

  end

  private

  def set_shot
    @shot = Shot.find(params[:id])
  end


  def shot_invite_params
      params.require(:shot_invite).permit(:inviter_id, :invitee_id, :shot_id)
  end

end
