require 'test_helper'

class NewControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get new_show_url
    assert_response :success
  end

  test "should get edit" do
    get new_edit_url
    assert_response :success
  end

  test "should get index" do
    get new_index_url
    assert_response :success
  end

  test "should get set_business_time" do
    get new_set_business_time_url
    assert_response :success
  end

  test "should get select_prefecture" do
    get new_select_prefecture_url
    assert_response :success
  end

end
