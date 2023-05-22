class AddChatRefToComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :chat, null: false, foreign_key: true
  end
end
