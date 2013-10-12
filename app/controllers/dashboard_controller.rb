class DashboardController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:user_id])
    @eat_events = @user.eat_events.default_period
    @outdoor_events = @user.outdoor_events.default_period
    @exercise_events = @user.exercise_events.default_period
  end
end
