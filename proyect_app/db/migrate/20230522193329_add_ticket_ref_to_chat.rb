class AddTicketRefToChat < ActiveRecord::Migration[7.0]
  def change
    add_reference :chats, :ticket, null: false, foreign_key: true
  end
end
