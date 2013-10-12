require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test "create should accept an event" do
    put :create, event: { user_id: 1, event_date: "20130601", type: "EatEvent" }
    assert_response :success
  end

end
