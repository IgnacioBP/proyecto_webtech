class AddUserRefToTicketList < ActiveRecord::Migration[7.0]
  def change
    
    rename_column :ticket_lists, :user_mail_id, :user_mail
    change_column :ticket_lists, :user_mail, :text
    add_foreign_key :ticket_lists, :users, column: 'user_mail', primary_key: 'mail',  on_delete: :cascade
  end
end
