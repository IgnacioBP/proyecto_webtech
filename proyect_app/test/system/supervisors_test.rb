require "application_system_test_case"

class SupervisorsTest < ApplicationSystemTestCase
  setup do
    @supervisor = supervisors(:one)
  end

  test "visiting the index" do
    visit supervisors_url
    assert_selector "h1", text: "Supervisors"
  end

  test "should create supervisor" do
    visit supervisors_url
    click_on "New supervisor"

    fill_in "Last name", with: @supervisor.last_name
    fill_in "Mail", with: @supervisor.mail
    fill_in "Name", with: @supervisor.name
    fill_in "Password", with: @supervisor.password
    fill_in "Phone", with: @supervisor.phone
    click_on "Create Supervisor"

    assert_text "Supervisor was successfully created"
    click_on "Back"
  end

  test "should update Supervisor" do
    visit supervisor_url(@supervisor)
    click_on "Edit this supervisor", match: :first

    fill_in "Last name", with: @supervisor.last_name
    fill_in "Mail", with: @supervisor.mail
    fill_in "Name", with: @supervisor.name
    fill_in "Password", with: @supervisor.password
    fill_in "Phone", with: @supervisor.phone
    click_on "Update Supervisor"

    assert_text "Supervisor was successfully updated"
    click_on "Back"
  end

  test "should destroy Supervisor" do
    visit supervisor_url(@supervisor)
    click_on "Destroy this supervisor", match: :first

    assert_text "Supervisor was successfully destroyed"
  end
end
