class AddSupervisorRefToPerformanceReport < ActiveRecord::Migration[7.0]
  def change
    rename_column :performance_reports, :supervisor_mail_id, :supervisor_mail
    change_column :performance_reports, :supervisor_mail, :text
    add_foreign_key :performance_reports, :supervisors, column: 'supervisor_mail', primary_key: 'mail',  on_delete: :cascade

  end
end
