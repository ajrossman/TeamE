class User < ActiveRecord::Base
  has_many :eat_events, dependent: :destroy
  has_many :exercise_events, dependent: :destroy
  has_many :outdoor_events, dependent: :destroy

  def eaten_today?
    eat_events.exists?(event_date: Date.today)
  end

  def exercised_today?
    exercise_events.exists?(event_date: Date.today)
  end

  def outside_today?
    outdoor_events.exists?(event_date: Date.today)
  end
end

