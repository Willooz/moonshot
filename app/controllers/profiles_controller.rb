class ProfilesController < ApplicationController
  def index
    @account = Account.find(current_user.profiles.last.account_id)
    @profiles = Profile.where("account_id = ?", @account.id)
    @profiles.each do |profile|
      @users = User.find(profile.user_id)
    end
  end

  def show
    @profile = Profile.find(params[:id])
    @user = @profile.user
    @account = Account.find(current_user.profiles.last.account_id)
    @shots = Shot.all
  end

  def mine
    @user = current_user
    @profile = current_user.profiles.first
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
end
