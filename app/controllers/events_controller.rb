class EventsController < ApplicationController
  include SessionsHelper
  before_action :check_user, only: %i[create new show]

  def index
      @past = Event.past
      @future = Event.future
      @events = Event.all
  end

  def new
    @event = current_user.events.build
  end
 
  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def show
  @event = Event.find(params[:id])
  end

private

  def check_user
      redirect_to root_path if !current_user
  end
  def event_params
    params.require(:event).permit(:name,:location,:date,:description)
  end
end