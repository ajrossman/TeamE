class User < ActiveRecord::Base
  has_many :eat_events
  has_many :exercise_events
  has_many :outdoor_events
end

