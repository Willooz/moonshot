class ShotsController < ApplicationController

  def show
    @shot = Shot.find(params[:id])
    authorize @shot
  end

  def index
    @account = Account.find(@account)
    @shots = @account.shots
    @shots = policy_scope(Shot)
  end

  def mine
    @shots = Shot.all
  end

  def new
    @shot = Shot.new
  end

  def create
    @shot = Shot.new(shot_params)
  end

  def edit
    @shot = Shot.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def shot_params
    params.require(:shot).permit(:title, :description, :account_id, :baseline_value, :target_value, :accomplished, :deadline)
  end

end
