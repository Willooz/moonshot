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
end
