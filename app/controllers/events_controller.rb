class EventsController < ApplicationController
  
  def new             
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to send_event_path(@event)
    else
      render :new
    end
  end

end
