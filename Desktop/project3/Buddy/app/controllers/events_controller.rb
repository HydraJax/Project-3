class EventsController < ApplicationController

before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.create(event_params)
    redirect_to event_path(@event)
    # @user_events = current_user.events
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :description, :address, :time, :date, :difficulty)
  end

end
