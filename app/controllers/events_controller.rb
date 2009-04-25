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

  def show
    @event=Event.find(params[:id], :include=>:proposed_dates)
    allowed=@event.check_attendee(params[:attendee_token])
    if allowed      
      render
    else
      render :nothing=>true, :status=>401
    end
    
  end
end
