class EventsController < ApplicationController
  def index
    @events = current_account.events.reverse
  end
end
