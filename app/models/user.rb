class User < ActiveRecord::Base
  has_many :eat_events, dependent: :destroy
  has_many :exercise_events, dependent: :destroy
  has_many :outdoor_events, dependent: :destroy
end

