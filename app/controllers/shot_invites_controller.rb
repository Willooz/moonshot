class ShotInvitesController < ApplicationController
  before_action :set_shot, only: [:new, :create, :edit, :update, :destroy]
  respond_to :js, only: [:update, :destroy]
  def new
    @shot_invite = ShotInvite.new
    current_invites = []
    @shot.invitees.each do |invitee|
      current_invites << invitee.id
    end
    @profiles = current_account.profiles.where.not(id: current_invites)
    @inviter = current_profile
  end

  def create
    @shot_invite = ShotInvite.new(shot_invite_params)
    @shot_invite.save!
    flash[:notice] = "Your invitation has been sent. It needs to be accepted before it appears on the shot's overview or your mate's profile."
    redirect_to shot_path(@shot)
  end

  def create_many
    invitee_ids = params[:invitees].keys.map { |k| k.to_i }
    shot = Shot.find(params[:id])
    invitee_ids.each do |invitee_id|
      shot_invite = shot.shot_invites.build(
        inviter_id: current_profile.id,
        invitee_id: invitee_id
      )
      shot_invite.save
      if shot_invite.save
        flash[:notice] = "You successfully invited new teammates"
      end
    end
    redirect_to shot_path(shot)
  end

  def edit
  end

  def update
    @invite = ShotInvite.find(params[:shot_invite_id])
    @invite.update_attribute(:in_team, true)
    @invite.events.create(shot_id: params[:shot_id])

  end

  def destroy
    invite = ShotInvite.find(params[:shot_invite_id])
    invite.destroy
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
