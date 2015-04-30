class ShotInvitesController < ApplicationController
  before_action :set_shot, :set_account

  def new
    @shot_invite = ShotInvite.new
    @profiles = @account.profiles
  end

  def create
    @shot_invite = ShotInvite.new(shot_invite_params)
    @shot_invite.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_shot
    @shot = Shot.find(params[:shot_id])
  end

  def set_account
    @account = Account.find(params[:shot_id])
  end

  def shot_invite_params
      params.require(:shot_invite).permit(:inviter_id, :invitee_id, :shot_id)
  end
end
