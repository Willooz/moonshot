class ShotsController < ApplicationController

  def show
    @shot = Shot.find(params[:id])
  end

  def index
    @shots = @account.shots
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
