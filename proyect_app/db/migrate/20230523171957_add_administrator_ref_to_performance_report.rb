class AddAdministratorRefToPerformanceReport < ActiveRecord::Migration[7.0]
  def change
    rename_column :performance_reports, :administrator_mail_id, :administrator_mail
    change_column :performance_reports, :administrator_mail, :text
    add_foreign_key :performance_reports, :administrators, column: 'administrator_mail', primary_key: 'mail',  on_delete: :cascade
  end
end
