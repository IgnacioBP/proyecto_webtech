class AddTicketRefToAssignTicket < ActiveRecord::Migration[7.0]
  def change
    add_reference :assign_tickets, :ticket, null: false, foreign_key: true
  end
end
