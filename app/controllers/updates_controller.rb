class UpdatesController < ApplicationController
  def new
    @shot = Shot.find(params[:shot_id])
    @update = Update.new
  end

  def create
    @update = Update.create(update_params)
    @shot = Shot.find(params[:shot_id])
    @account = Account.find(params[:account_id])
    redirect_to account_shot_path(@account, @shot)
  end

  private

  def update_params
    params.require(:update).permit(:description, :current_value, :profile_id, :shot_id)
  end
end
