class EventsController < ApplicationController
  def index
    @events = current_account.events.reverse
    @account = current_account
  end
end
