require 'test_helper'

class CalendarsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get calendars_new_url
    assert_response :success
  end

  test "should get next" do
    get calendars_next_url
    assert_response :success
  end

  test "should get index_for_user" do
    get calendars_index_for_user_url
    assert_response :success
  end

  test "should get s_index" do
    get calendars_s_index_url
    assert_response :success
  end

  test "should get demo" do
    get calendars_demo_url
    assert_response :success
  end

  test "should get confirm" do
    get calendars_confirm_url
    assert_response :success
  end

end
