class BagdesController < ApplicationController
  def index
    @badges = Badge.all
  end
end
