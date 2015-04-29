class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @account_users = []
    @account.profiles.each do |profile|
      @account_users << profile.user.id
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
    if current_user.profiles.any?
      @profile = current_user.profiles.find_by account_id: @account.id
    end
  end

end

