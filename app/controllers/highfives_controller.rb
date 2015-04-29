class HighfivesController < ApplicationController
  def index
    @highfives = Highfive.all
  end

  def create
    # selected_badges = params[:badges]
    # @highfives = Highfive.select()
  end
end