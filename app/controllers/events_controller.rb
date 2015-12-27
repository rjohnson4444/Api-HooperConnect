class EventsController < ApplicationController
  def index
    @events = Event.find(params[:event])
  end

  def show
  end

  def new

  end
end
