class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @account_users = []
    @account.memberships.each do |membership|
      @account_users << membership.user.id
    end
  end


  def edit
  end

  def update
  end


  def destroy
  end

  def show
    @user = User.find(params[:id])
  end


private

def set_user
  @user = current_user
  if current_user.memberships.any?
    @membership = current_user.memberships.find_by account_id: @account.id
  end
end

end

