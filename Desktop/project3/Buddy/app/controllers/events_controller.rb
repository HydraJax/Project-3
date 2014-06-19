class EventsController < ApplicationController

# before_action :authenticate_user! only: [:edit, :update, :destroy, :new, :create]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = event.new(event_params)
    params.require(:event).permit(:event_name, :description)

  end

  def edit
  end

  def update
  end

  def destroy
  end

end
