class ShotsController < ApplicationController

  def show
    @shot = Shot.find(params[:id])
  end

  def index
    @account = Account.find(@account)
    @shots = @account.shots
  end

  def new
    @shot = Shot.new
  end

  def create
    @shot = Shot.new(shot_params)
    @shot[:account_id] = params["account_id"].to_i
    @shot.save
    redirect_to account_shots_path
  end

  def edit
    @shot = Shot.find(params[:id])
  end

  def update
    @shot = Shot.find(params[:id])
    @shot.update!(shot_params)
    redirect_to account_shot_path(@account, @shot)
  end

  def destroy
  end

  private

  def shot_params
    params.require(:shot).permit(:title, :description, :account_id, :baseline_value, :target_value, :accomplished, :deadline)
  end

end
