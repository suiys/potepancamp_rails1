class EventsController < ApplicationController
  def index
    @events = Event.all
    @count = Event.count
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:titile, :startdate, :enddate, :allday, :memo))
    if @event.save
      flash[:notice] = "予定を追加しました"
      redirect_to events_path
    else
      render "new"
    end
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
