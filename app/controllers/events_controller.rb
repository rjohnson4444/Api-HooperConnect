class EventsController < ApplicationController
  def index
    @event_info = Event.general_info(params[:event])
  end

  def show
  end

  def new

  end
end
