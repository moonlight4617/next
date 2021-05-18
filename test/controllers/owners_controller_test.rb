require 'test_helper'

class OwnersControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get owners_about_url
    assert_response :success
  end

  test "should get new" do
    get owners_new_url
    assert_response :success
  end

  test "should get edit" do
    get owners_edit_url
    assert_response :success
  end

  test "should get show" do
    get owners_show_url
    assert_response :success
  end

end
