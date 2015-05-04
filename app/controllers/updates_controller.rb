class UpdatesController < ApplicationController
  def new
    @shot = Shot.find(params[:id])
    @update = Update.new
  end

  def create
    @update = Update.create(update_params)
    @shot = Shot.find(params[:id])
    @account = current_account
    @update.events.create(shot_id: @shot.id)
    redirect_to shot_path(@shot)
  end

  private

  def update_params
    params.require(:update).permit(:description, :current_value, :profile_id, :shot_id)
  end
end
