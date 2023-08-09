class EventsController < ApplicationController
  def index
    @events = Event.all
    @count = Event.count
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:title, :startdate, :enddate, :allday, :memo))
    if @event.save
      flash[:notice] = "予定を追加しました"
      redirect_to events_path
    else
      render "new"
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    
  end

  def destroy
    
  end
end
