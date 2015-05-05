class ShotsController < ApplicationController
  before_action :set_shot, only: [:show, :edit, :update, :destroy]

  def show
    @profile = current_profile
    @invitees = []
    @shot.shot_invites.each do |invite|
      if invite.in_team && invite.shot.deadline > Time.now
        @invitees << invite.invitee
      end
    end
  end

  def index
    @shots = current_account.shots
    @account = current_account
    @profile = current_profile
  end

  def mine
    @shots = current_profile.shots
  end

  def new
    @shot = Shot.new
  end

  def create
    @shot = Shot.new(shot_params)
    @shot[:account_id] = current_account.id
    @shot.save
    @shot.events.create(trigger: @shot)

    new_shot_invite = @shot.shot_invites.build(
      inviter: current_profile,
      invitee: current_profile,
      in_team: true
      )
    new_shot_invite.save
    flash[:notice] = "Shot successfully created"
    redirect_to shots_path
  end

  def edit
  end

  def update
    @shot.update!(shot_params)
    redirect_to account_shot_path(@account, @shot)
  end

  def destroy
  end

  def mine
    @shots = current_profile.shots
  end

  private

  def shot_params
    params.require(:shot).permit(:title, :description, :account_id, :baseline_value, :target_value, :accomplished, :deadline, :unit)
  end


  def set_shot
    @shot = Shot.find(params[:id])
  end

end
