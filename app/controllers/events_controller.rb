class EventsController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    @event = event_type.new(event_params)
    if @event.save
      user = User.find(params[:event][:user_id])
      event = "#{@event.class.to_s.underscore.gsub("_event","")}_record"
      user.increment(event)
      user.save
      redirect_to user_dashboard_path(user.id)
    else
      redirect_to :root
    end
  end

  private
  def event_type
    params[:event].delete(:type).constantize
  end

  def event_params
    params.require(:event).permit(:event_date, :user_id)
  end
end
