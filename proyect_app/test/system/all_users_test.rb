require "application_system_test_case"

class AllUsersTest < ApplicationSystemTestCase
  setup do
    @all_user = all_users(:one)
  end

  test "visiting the index" do
    visit all_users_url
    assert_selector "h1", text: "All users"
  end

  test "should create all user" do
    visit all_users_url
    click_on "New all user"

    click_on "Create All user"

    assert_text "All user was successfully created"
    click_on "Back"
  end

  test "should update All user" do
    visit all_user_url(@all_user)
    click_on "Edit this all user", match: :first

    click_on "Update All user"

    assert_text "All user was successfully updated"
    click_on "Back"
  end

  test "should destroy All user" do
    visit all_user_url(@all_user)
    click_on "Destroy this all user", match: :first

    assert_text "All user was successfully destroyed"
  end
end
