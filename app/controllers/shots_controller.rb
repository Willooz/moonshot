class ShotsController < ApplicationController

  def show
    @shot = Shot.find(params[:id])
    authorize @shot
  end

  def index
    @shots = @account.shots
    @shots = policy_scope(Shot)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
