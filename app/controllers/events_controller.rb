class EventsController < ApplicationController
  def index
    @events = Event.all
    @count = Event.count
  end

  def new
    @event = Event.new
  end

  def create
    
  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end
end
