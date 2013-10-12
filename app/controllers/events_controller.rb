class EventsController < ApplicationController
  def create
    @event = event_type.new(event_params)
    if @event.save
      head :ok
    end
  end

  private
  def event_type
    params[:event][:type].constantize
  end

  def event_params
    params.require(:event).permit(:event_date, :user_id)
  end
end
