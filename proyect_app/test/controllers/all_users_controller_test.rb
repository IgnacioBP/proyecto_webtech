require "test_helper"

class AllUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @all_user = all_users(:one)
  end

  test "should get index" do
    get all_users_url
    assert_response :success
  end

  test "should get new" do
    get new_all_user_url
    assert_response :success
  end

  test "should create all_user" do
    assert_difference("AllUser.count") do
      post all_users_url, params: { all_user: {  } }
    end

    assert_redirected_to all_user_url(AllUser.last)
  end

  test "should show all_user" do
    get all_user_url(@all_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_all_user_url(@all_user)
    assert_response :success
  end

  test "should update all_user" do
    patch all_user_url(@all_user), params: { all_user: {  } }
    assert_redirected_to all_user_url(@all_user)
  end

  test "should destroy all_user" do
    assert_difference("AllUser.count", -1) do
      delete all_user_url(@all_user)
    end

    assert_redirected_to all_users_url
  end
end
