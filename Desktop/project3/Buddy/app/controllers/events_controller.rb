class EventsController < ApplicationController

before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]

  def index
    @event = EventUser.all
    @events = Event.order(created_at: :desc).page(params[:page]).per(7)
  end

  def my_events
    @events = current_user.events.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.create(event_params)
    @user_events = current_user.events
      if @event.save
        flash[:notice] = "Your Event was created"
         redirect_to event_path(@event)
      else
        flash[:notice] = "Your Event did not get created, retry !"
         redirect_to new_event_path
       end
  end

  def edit
    @event = Event.find(params[:id])
      # if @event.user_id != current_user.id
    #    flash[:error]= "You don't have permission to do that"
    #      redirect_to events_path
    # end
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find_by_id(params[:id])
    @event.destroy
    redirect_to request.referer
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :description, :address, :time, :date, :difficulty,:location)
  end

end
