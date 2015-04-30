class BagdesController < ApplicationController
  def index
    @badges = Badge.all
  end

  def select
    badges = params[:badges]
  end
end
