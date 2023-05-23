require "test_helper"

class AllTicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @all_ticket = all_tickets(:one)
  end

  test "should get index" do
    get all_tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_all_ticket_url
    assert_response :success
  end

  test "should create all_ticket" do
    assert_difference("AllTicket.count") do
      post all_tickets_url, params: { all_ticket: {  } }
    end

    assert_redirected_to all_ticket_url(AllTicket.last)
  end

  test "should show all_ticket" do
    get all_ticket_url(@all_ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_all_ticket_url(@all_ticket)
    assert_response :success
  end

  test "should update all_ticket" do
    patch all_ticket_url(@all_ticket), params: { all_ticket: {  } }
    assert_redirected_to all_ticket_url(@all_ticket)
  end

  test "should destroy all_ticket" do
    assert_difference("AllTicket.count", -1) do
      delete all_ticket_url(@all_ticket)
    end

    assert_redirected_to all_tickets_url
  end
end
