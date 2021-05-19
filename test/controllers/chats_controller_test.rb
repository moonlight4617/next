require 'test_helper'

class ChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get chats_show_url
    assert_response :success
  end

  test "should get show_for_owner" do
    get chats_show_for_owner_url
    assert_response :success
  end

  test "should get index_for_owner" do
    get chats_index_for_owner_url
    assert_response :success
  end

end
