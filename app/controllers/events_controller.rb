class EventsController < ApplicationController
  def index
    @events=Event.all
  end

  def new
    @event=Event.new
  end

  def create
   
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_index_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def event_params
    params.require(:event).permit(:name, :start_time, :end_time, :category_id, :location_id)
  end
end
