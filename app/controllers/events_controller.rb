class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = current_user.created_events.new
  end

  def create
    @event = current_user.created_events.new(event_params)

    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    @event.attendees << User.find(invite_params[:attendee_id])
    redirect_to event_path(@event)
  end

  private

  def event_params
    params.require(:event).permit(:date, :description)
  end

  def invite_params
    params.require(:event).permit(:attendee_id)
  end
end
