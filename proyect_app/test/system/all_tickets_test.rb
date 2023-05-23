require "application_system_test_case"

class AllTicketsTest < ApplicationSystemTestCase
  setup do
    @all_ticket = all_tickets(:one)
  end

  test "visiting the index" do
    visit all_tickets_url
    assert_selector "h1", text: "All tickets"
  end

  test "should create all ticket" do
    visit all_tickets_url
    click_on "New all ticket"

    click_on "Create All ticket"

    assert_text "All ticket was successfully created"
    click_on "Back"
  end

  test "should update All ticket" do
    visit all_ticket_url(@all_ticket)
    click_on "Edit this all ticket", match: :first

    click_on "Update All ticket"

    assert_text "All ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy All ticket" do
    visit all_ticket_url(@all_ticket)
    click_on "Destroy this all ticket", match: :first

    assert_text "All ticket was successfully destroyed"
  end
end
