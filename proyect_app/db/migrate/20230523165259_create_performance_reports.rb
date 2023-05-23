class CreatePerformanceReports < ActiveRecord::Migration[7.0]
  def change
    create_table :performance_reports do |t|
      t.datetime :report_date, null: false

      t.references :administrator_mail, references: :administrator
      t.references :supervisor_mail, references: :supervisor
      t.timestamps
    end
  end
end
