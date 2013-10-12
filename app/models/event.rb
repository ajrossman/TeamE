class Event < ActiveRecord::Base
  belongs_to :user

  scope :default_period, -> { where('event_date > ?', 21.days.ago) }
end
