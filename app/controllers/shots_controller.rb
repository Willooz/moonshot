class ShotsController < ApplicationController
  before_action :set_shot, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @shots = @account.shots
  end

  def mine
    @shots = Shot.all
  end

  def new
    @shot = Shot.new
  end

  def create
    @shot = Shot.new(shot_params)
    @shot[:account_id] = params[:account_id]
    @shot.save
    redirect_to account_shots_path
  end

  def edit
  end

  def update
    @shot.update!(shot_params)
    redirect_to account_shot_path(@account, @shot)
  end

  def destroy
  end

  private

  def shot_params
    params.require(:shot).permit(:title, :description, :account_id, :baseline_value, :target_value, :accomplished, :deadline)
  end


  def set_shot
    @shot = Shot.find(params[:id])
  end

end
