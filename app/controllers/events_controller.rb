class EventsController < ApplicationController
  def index
    @events = Event.where(start: params[:start]..params[:end])
  end
  
  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end
  
  def create
    @event = Event.new(event_params)
    @event.save
  end
  
  
end
