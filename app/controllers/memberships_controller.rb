class MembershipsController < ApplicationController
  def index
    @account = Account.find(current_user.memberships.last.account_id)
    @memberships = Membership.where("account_id = ?", @account.id)
    @users = []
    @memberships.each do |membership|
      @users << User.find(membership.user_id)
    end

  end

  def show
    @membership = Membership.find(params[:id])
    @user = User.find(@membership.user_id)
  end
end
