class ProfilesController < ApplicationController
  def index
    @profiles = Profile.where("account_id = ?", current_account.id)
    @current_profile = current_profile
  end

  def show
    @current_profile = current_profile
    @profile = Profile.find(params[:id])
    @user = @profile.user
    @account = Account.find(current_user.profiles.last.account_id)
    incoming_invites = ShotInvite.where(invitee_id: current_profile.id)
    @accepted_shots = []
    @all_shots = []
    incoming_invites.each do |invite|
      if invite.in_team && invite.shot.deadline > Time.now
        @accepted_shots << Shot.find(invite.shot_id)
      elsif invite.in_team
        @all_shots << Shot.find(invite.shot_id)
      end
      @accepted_shots.each do |shot|
        @all_shots << shot
      end
    end
    @highfives = Highfive.where(receiver_id: current_profile.id)
  end




  def mine
    @user = current_user
    @profile = current_profile
    @account = @profile.account

    @shots_pending = []
    @shots_accepted = []
    @profile.shot_invites_received.each do |invite|
      if invite.in_team && invite.shot.deadline > Time.now
       @shots_accepted << invite.shot
      else
        if invite.shot.deadline > Time.now
          @shots_pending << invite.shot
        end
      end
    end
  end

  def invite
    @inviter = current_profile
    @invitee = Profile.find(params[:id])
    @shots = []
    current_profile.shot_invites_received.each do |invite|
      if invite.in_team && invite.shot.deadline > Time.now
        @shots << invite.shot
      end
    end
  end


  def give_badges
    @badges = Badge.all
    @highfive = Highfive.new
    @receiver = Profile.find(params[:id])
    @giver = current_profile
    shots = @receiver.shots
    @common_shots = []
    shots.each do |shot|
      if @receiver.shots.include?(shot)
        @common_shots << shot
      end
    end
  end

  def assign_badges
    redirect_to people_show_path(params[:id])

  end

  private

  def highfive_params
    params.require(:highfive).permit(:giver_id, :receiver_id, :badge_id)
  end
end
