class AddExecutiveRefToExecutiveReport < ActiveRecord::Migration[7.0]
  def change
    
    rename_column :executive_reports, :executive_mail_id, :executive_mail
    change_column :executive_reports, :executive_mail, :text
    add_foreign_key :executive_reports, :executives, column: 'executive_mail', primary_key: 'mail',  on_delete: :cascade
  end
end
