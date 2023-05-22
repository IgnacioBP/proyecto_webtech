class AddExecutiveRefToAssignTicket < ActiveRecord::Migration[7.0]
  def change
    rename_column :assign_tickets, :executive_mail_id, :executive_mail
    change_column :assign_tickets, :executive_mail, :text
    add_foreign_key :assign_tickets, :executives, column: 'executive_mail', primary_key: 'mail',  on_delete: :cascade
  end
end
